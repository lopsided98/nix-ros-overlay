{ lib ? rosSelf.lib or self.lib
, self ? null
, rosSelf ? null }:
{
  mkOverlay = overlays: let
    s = lib.composeManyExtensions overlays s {};
  in s;

  # Create a tarball of a package source. If the source is already an archive,
  # it will be unpacked and repacked as a tarball.
  tarSource = {
    compress ? false,
    hook ? "",
    hash ? null
  }: src: self.runCommand ("${src.name}.tar" + lib.optionalString compress ".gz") ({
    inherit src;
  } // lib.optionalAttrs (hash != null) {
    outputHashMode = "flat";
    outputHash = hash;
  }) ''
    unpackPhase
    pushd "$sourceRoot"
    ${hook}
    popd
    tar --sort=name \
      --format=gnu \
      --owner=0 --group=0 --numeric-owner \
      --mtime="@$SOURCE_DATE_EPOCH" \
      ${lib.optionalString compress "-z"} \
      -cf "$out" "$sourceRoot"
  '';

  patchVendorUrl = pkg: {
    url, hash ? "", sha256 ? "",
    originalUrl ? url,
    file ? "CMakeLists.txt"
  }: pkg.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = ''
      substituteInPlace ${lib.escapeShellArg file} \
        --replace-fail ${lib.escapeShellArg originalUrl} ${lib.escapeShellArg (self.fetchurl { inherit url hash sha256; })}
    '' + postPatch;
  });

  patchExternalProjectGit = pkg: {
    url,
    rev,
    originalRev ? rev,
    originalUrl ? url,
    revVariable ? "",
    file ? "CMakeLists.txt",
    fetchgitArgs ? {}
  }: pkg.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = let
      script = ''
        $0 ~ "GIT_REPOSITORY[[:blank:]]+" originalUrl \
          { print "URL \"" path "\""; foundUrl=1; next } \
          { print }
        $0 ~ "GIT_TAG[[:blank:]]+" originalRev { print; foundRev=1 }
        $0 ~ "set\\(" revVariable "[[:blank:]]+\"?" originalRev "\"?\\)" { print; foundRev=1 }
        END {
          if (!foundUrl) print "patchExternalProjectGit: did not find URL: " originalUrl > "/dev/stderr"
          if (!foundRev) print "patchExternalProjectGit: did not find revision: " originalRev > "/dev/stderr"
          exit !(foundUrl && foundRev)
        }
      '';
    in ''
      awk -i inplace \
        -v originalUrl=${lib.escapeShellArg originalUrl} \
        -v originalRev=${lib.escapeShellArg originalRev} \
        -v revVariable=${lib.escapeShellArg revVariable} \
        -v path=${lib.escapeShellArg (self.fetchgit ({ inherit url rev; } // fetchgitArgs))} \
        ${lib.escapeShellArg script} \
        ${lib.escapeShellArg file}
    '' + postPatch;
  });

  # Patch a vendored download that uses ament_vendor() with a Git repo as the
  # source.
  patchAmentVendorGit = pkg: {
    file ? "CMakeLists.txt",
    fetchgitArgs ? {},
    tarSourceArgs ? {}
  }: pkg.overrideAttrs ({
    nativeBuildInputs ? [],
    passthru ? {},
    postPatch ? "", ...
  }: let
    vendoredSourceJson = "${dirOf pkg.meta.position}/vendored-source.json";
    inherit (builtins) stringLength substring pathExists;
    nameStart = 5 + stringLength pkg.rosDistro; # e.g. ros-jazzy- => 10
    attr = substring nameStart (-1) pkg.pname;
    errMsg = ''
      error: File ${vendoredSourceJson} missing.
      Run "$(nix-build -A rosPackages.${pkg.rosDistro}.${attr}.updateAmentVendor)" to create it.
    '';
    sourceInfo = builtins.fromJSON (builtins.readFile vendoredSourceJson);
    # ament_vendor doesn't allow patches for path inputs, so we have to pack it
    # into a tar first. Additionally, vcstool only accepts tarballs with the
    # version number as the root directory name.
    vendor = lib.tarSource tarSourceArgs (
      self.fetchgit (sourceInfo // fetchgitArgs // {
        name = sourceInfo.rev;
      }));
  in {
    # CMake ExternalProject patches are applied with git apply
    nativeBuildInputs = nativeBuildInputs ++ [ self.git ];
    postPatch = (if pathExists vendoredSourceJson then ''
      sed -i '\|VCS_URL\s*|c\
        VCS_URL "file://${vendor}"\
        VCS_TYPE tar' \
        ${lib.escapeShellArg file}
    '' else ''
      echo >&2 ${lib.escapeShellArg errMsg}
      exit 1
    '') + postPatch;
    passthru = passthru // {
      # Script to automatically update vendored-source.json by running
      # CMake with injected modified version of ament_cmake macro.
      updateAmentVendor = let
        source = self.srcOnly pkg;
        sourceDrvPath = builtins.unsafeDiscardOutputDependency source.drvPath;
        amentVendorNix = self.runCommand "ament_cmake_vendor_package_nix" {} ''
          install -D ${./ament_cmake_vendor_packageConfig.cmake} $out/ament_cmake_vendor_packageConfig.cmake
        '';
        updateScript = self.writeShellScript "ament-vendor-update.sh" ''
          set -eo pipefail
          cd "$(${self.coreutils}/bin/mktemp -d)"
          trap "${self.coreutils}/bin/rm -rf '$PWD'" SIGINT SIGTERM ERR EXIT
          source "$stdenv/setup"
          export NIX_SSL_CERT_FILE="${self.cacert}/etc/ssl/certs/ca-bundle.crt"
          # Inject our version of ament_cmake_vendor_package
          export PATH="${lib.makeBinPath (with self; [ nix-prefetch-git jq ])}:$PATH"
          export CMAKE_PREFIX_PATH=${amentVendorNix}
          phases="''${prePhases[*]:-} unpackPhase patchPhase ''${preConfigurePhases[*]:-} configurePhase ''${preBuildPhases[*]:-}" \
            genericBuild
          # Copy the resulting data to package source directory
          cp -v vendored-source.json ${dirOf pkg.meta.position}
        '';
      in self.writeShellScript "update-${pkg.pname}" ''
        set -eo pipefail
        echo ============== Updating ${pkg.pname} ==============
        NIX_BUILD_SHELL=${self.runtimeShell} nix-shell --pure ${sourceDrvPath} --run ${updateScript}
      '';
    };
  });

  # patchAmentVendorGit specialized for gz-*-vendor packages. In
  # addition to patching ament_vendor() calls, it patches other things
  # in CMakeLists.txt.
  patchGzAmentVendorGit = pkg: {
    tarSourceArgs ? {}
  }: let
    patchedPkg = lib.patchAmentVendorGit pkg {
      inherit tarSourceArgs;
    };
  in patchedPkg.overrideAttrs ({
    pname, postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      # Use standard installation paths rather than /opt
      substituteInPlace CMakeLists.txt \
        --replace-fail 'opt/''${PROJECT_NAME}/extra_cmake' 'share/extra_cmake'
      substituteInPlace *-extras.cmake.in \
        --replace-fail 'opt/@PROJECT_NAME@/extra_cmake' 'share/extra_cmake'
    '';
  });

  # Many ROS packages claim to have a dependency on Boost signals when they
  # really don't or they actually depend on signals2. Boost 1.69 removed
  # signals causing these packages to fail to build.
  patchBoostSignals = pkg: pkg.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = ''
      sed -i '/find_package(Boost [^)]*/s/signals//g' CMakeLists.txt
    '' + postPatch;
  });
}

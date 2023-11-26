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
        --replace ${lib.escapeShellArg originalUrl} ${lib.escapeShellArg (self.fetchurl { inherit url hash sha256; })}
    '' + postPatch;
  });

  patchExternalProjectGit = pkg: {
    url,
    originalUrl ? url,
    file ? "CMakeLists.txt",
    fetchgitArgs ? {}
  }: pkg.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = ''
      sed -i '\|GIT_REPOSITORY\s.*${originalUrl}|c\
        URL "${self.fetchgit ({ inherit url; } // fetchgitArgs)}"' \
        ${lib.escapeShellArg file}
    '' + postPatch;
  });

  # Patch a vendored download that uses ament_vendor() with a Git repo as the
  # source.
  patchAmentVendorGit = pkg: {
    url,
    originalUrl ? url,
    rev, # Must correspond to the VCS_VERSION argument
    file ? "CMakeLists.txt",
    fetchgitArgs ? {},
    tarSourceArgs ? {}
  }: pkg.overrideAttrs ({
    nativeBuildInputs ? [],
    postPatch ? "", ...
  }: let
    # ament_vendor doesn't allow patches for path inputs, so we have to pack it
    # into a tar first. Additionally, vcstool only accepts tarballs with the
    # version number as the root directory name.
    vendor = lib.tarSource tarSourceArgs (self.fetchgit (fetchgitArgs // {
      name = rev;
      inherit url rev;
    }));
  in {
    # CMake ExternalProject patches are applied with git apply
    nativeBuildInputs = nativeBuildInputs ++ [ self.git ];
    postPatch = ''
      sed -i '\|VCS_URL\s*${originalUrl}|c\
        VCS_URL "file://${vendor}"\
        VCS_TYPE tar' \
        ${lib.escapeShellArg file}
    '' + postPatch;
  });

  patchBoostPython = pkg: pkg.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = let
      pythonVersion = rosSelf.python.sourceVersion;
      pythonLib = "python${pythonVersion.major}${pythonVersion.minor}";
    in ''
      sed -i CMakeLists.txt \
        -e '/Boost [^)]*/s/python[^ )]*/${pythonLib}/'
    '' + postPatch;
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

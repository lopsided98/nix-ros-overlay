{ lib ? rosSelf.lib or self.lib
, self ? null
, rosSelf ? null }:
with lib;
{
  mergeOverlays = foldr composeExtensions (_: _: {});

  mkOverlay = overlays: let
    s = mergeOverlays overlays s {};
  in s;

  patchVendorUrl = pkg: {
    url, sha256,
    originalUrl ? url,
    file ? "CMakeLists.txt"
  }: pkg.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = ''
      substituteInPlace '${file}' \
        --replace '${originalUrl}' '${self.fetchurl { inherit url sha256; }}'
    '' + postPatch;
  });

  patchVendorGit = pkg: {
    url,
    file ? "CMakeLists.txt",
    fetchgitArgs ? {}
  }: pkg.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = ''
      sed -i '\|GIT_REPOSITORY\s.*${escapeShellArg url}|c\
        URL "${self.fetchgit ({ inherit url; } // fetchgitArgs)}"' \
        '${file}'
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

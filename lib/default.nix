{ lib ? rosSelf.lib or self.lib
, self ? null
, rosSelf ? null }:
with lib;
{
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

  patchBoostPython = let
    pythonVersion = rosSelf.python.sourceVersion;
    pythonLib = "python${pythonVersion.major}${pythonVersion.minor}";
  in ''
    sed -Ei CMakeLists.txt \
      -e 's/(Boost [^)]*)python[^ )]*([ )])/\1${pythonLib}\2/'
  '';

  patchBoostSignals = pkg: pkg.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = ''
      sed -i '/find_package(Boost [^)]*/s/signals//g' CMakeLists.txt
    '' + postPatch;
  });
} // (import ./mk-overlay.nix { inherit lib; })

{ stdenv, lib, pythonPackages, rosDistro, rosVersion }:
{ buildType ? "catkin"
  # Too difficult to fix all the problems with the tests in each package
, doCheck ? false
# nixpkgs requires that either dontWrapQtApps is set or wrapQtAppsHook is added
# to nativeBuildInputs if a package depends on Qt5. This is difficult to achieve
# with auto-generated packages, so we just always disable wrapping except for
# packages that are overridden in distro-overlay.nix. This means some Qt5
# applications are broken, but allows all libraries that depend on Qt5 to build
# correctly.
, dontWrapQtApps ? true
, nativeBuildInputs ? [ ]
, CXXFLAGS ? ""
, postFixup ? ""
, passthru ? { }
, ...
}@args:

(if buildType == "ament_python" then pythonPackages.buildPythonPackage
else stdenv.mkDerivation) (args // {
  inherit doCheck dontWrapQtApps;

  # Disable warnings that cause "Log limit exceeded" errors on Hydra in lots of
  # packages that use Eigen
  CXXFLAGS = CXXFLAGS + "-Wno-deprecated-declarations -Wno-deprecated-copy";

  passthru = passthru // {
    rosPackage = true;
    inherit rosDistro rosVersion;
  };
} // lib.optionalAttrs (buildType == "ament_python") {
  dontUseCmakeConfigure = true;

  # Modelled after colcon:
  # https://github.com/colcon/colcon-core/blob/master/colcon_core/task/python/build.py
  format = "other";

  nativeBuildInputs = nativeBuildInputs ++ [ pythonPackages.setuptools ];

  buildPhase = ''
    runHook preBuild

    python setup.py build

    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall

    mkdir -p "$out/${pythonPackages.python.sitePackages}"
    export PYTHONPATH="$out/${pythonPackages.python.sitePackages}:$PYTHONPATH"
    python setup.py install --prefix="$out" --single-version-externally-managed --record /dev/null

    runHook postInstall
  '';

  postFixup = ''
    ${postFixup}
    find "$out/lib" -mindepth 1 -maxdepth 1 -type d ! -name '${pythonPackages.python.libPrefix}' -print0 | while read -d '''''' d; do
      wrapPythonProgramsIn "$d" "$out $pythonPath"
    done
  '';
})

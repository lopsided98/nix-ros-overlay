self:
rosSelf: rosSuper: with rosSelf.lib; {

  catkin = rosSuper.catkin.overrideAttrs ({
    propagatedBuildInputs ? [],
    patches ? [],
    postPatch ? "", ...
  }: let
    setupHook = rosSelf.callPackage ./catkin-setup-hook { };
  in {
    propagatedBuildInputs = [ self.cmake setupHook ] ++ propagatedBuildInputs;

    patches = [
      # Fix compatibility with setuptools 61
      # https://github.com/ros/catkin/pull/1176
      (self.fetchpatch {
        url = "https://github.com/ros/catkin/commit/e082348c4992e1850ba5e2bd02bbd7bd0c4c4b82.patch";
        hash = "sha256-NNdV30gNWBf7p8IjyCmnvz9MnU4zFkd4aaXNjs411MA=";
      })
    ];

    postPatch = postPatch + ''
      patchShebangs cmake
      substituteInPlace cmake/templates/python_distutils_install.sh.in \
        --replace /usr/bin/env "${self.coreutils}/bin/env"
    '';
  });

  # Packages that depend on catkin-pip still fail because they try to
  # download from the internet, but it should work outside of Nix builds.
  catkin-pip = rosSuper.catkin-pip.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      patchShebangs cmake
      substituteInPlace cmake/scripts/path_prepend.sh \
        --replace /bin/sed "${self.gnused}/bin/sed"
      substituteInPlace cmake/catkin-pip-prefix.cmake.in \
        --replace NO_SYSTEM_ENVIRONMENT_PATH ""
    '';
  });

    fcl-catkin = patchVendorUrl rosSuper.fcl-catkin {
      url = "https://github.com/flexible-collision-library/fcl/archive/v0.6.1.zip";
      sha256 = "0nryr4hg3lha1aaz35wbqr42lb6l8alfcy6slj2yn2dgb5syrmn2";
    };

    roscpp = patchBoostSignals rosSuper.roscpp;
}

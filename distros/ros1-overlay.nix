self:
rosSelf: rosSuper: with rosSelf.lib; {

  # While `python` in Nixpkgs is typically Python 2, this overlay has
  # historically set it to Python 3 as ROS 1 transitioned. Keep it that
  # way for compatibility.
  python = rosSelf.python3;
  pythonPackages = rosSelf.python.pkgs;

  python3 = rosSuper.python3 // {
    pkgs = rosSuper.python3.pkgs.overrideScope (pyFinal: pyPrev: {
      # nose is unmaintained and was removed from nixpkgs, but catkin depends
      # on it for tests. We don't run tests, so eliminate this dependency.
      nose = null;
    });
  };

  canopen-master = rosSuper.canopen-master.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # fix: error: 'set' in namespace 'std' does not name a template type
      # https://github.com/ros-industrial/ros_canopen/pull/480
      (self.fetchpatch {
        url = "https://github.com/ros-industrial/ros_canopen/commit/44b80b08ec0aa5e3bab8fd50bba785c3d8765e3c.patch";
        hash = "sha256-yMhkDpQq9RNC4CEd516n1PJivfTEeWFKuGtggm0UMpQ=";
        stripLen = 1;
      })
    ];
  });

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

      # Catkin uses CMAKE_PREFIX_PATH to find additional workspaces, but
      # nixpkgs switched to using NIXPKGS_CMAKE_PREFIX_PATH.
      # Force CMAKE_PREFIX_PATH to equal NIXPKGS_CMAKE_PREFIX_PATH here.
      # (https://github.com/NixOS/nixpkgs/commit/8c9c8ade2f88a85ccdd4858cc802d7b7d6c48fe0).
      # see: https://github.com/lopsided98/nix-ros-overlay/issues/491
      ./catkin-nixpkgs-prefix-path.patch
    ];

    postPatch = postPatch + ''
      patchShebangs cmake
      substituteInPlace cmake/templates/python_distutils_install.sh.in \
        --replace-fail /usr/bin/env "${self.coreutils}/bin/env"
    '';
  });

  costmap-converter = rosSuper.costmap-converter.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix build with OpenCV 4.7.0
      # https://github.com/rst-tu-dortmund/costmap_converter/pull/41
      (self.fetchpatch {
        url = "https://github.com/lopsided98/costmap_converter/commit/cb6af72f331a881fb399e651d6c9aaaf536a63e3.patch";
        hash = "sha256-ifpALB/poc8rFeuLGXz5YPcZT37hex1pwG+6G6V/FtA=";
      })
    ];
  });

  dynamic-reconfigure = rosSuper.dynamic-reconfigure.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace cmake/setup_custom_pythonpath.sh.in \
        --replace-fail '#!/usr/bin/env sh' '#!${self.stdenv.shell}'
    '';
  });

  fcl-catkin = patchVendorUrl rosSuper.fcl-catkin {
    url = "https://github.com/flexible-collision-library/fcl/archive/v0.6.1.zip";
    sha256 = "0nryr4hg3lha1aaz35wbqr42lb6l8alfcy6slj2yn2dgb5syrmn2";
  };

  image-cb-detector = patchBoostSignals rosSuper.image-cb-detector;

  jsk-recognition-msgs = rosSuper.jsk-recognition-msgs.overrideAttrs ({
    buildInputs ? [], postPatch ? "", ...
  }: {
    # Merged upstream
    # https://github.com/jsk-ros-pkg/jsk_recognition/pull/2836
    buildInputs = buildInputs ++ [ rosSelf.ros-environment ];
    # Part of upstream PR
    # https://github.com/jsk-ros-pkg/jsk_recognition/pull/2829
    postPatch = ''
      substituteInPlace CMakeLists.txt --replace-fail "catkin_python_setup()" ""
    '';
  });

  laser-cb-detector = patchBoostSignals rosSuper.laser-cb-detector;

  libpcan = patchVendorUrl rosSuper.libpcan {
    url = "http://www.peak-system.com/fileadmin/media/linux/files/peak-linux-driver-8.3.tar.gz";
    sha256 = "0f6v3vjszyg1xp99jx48hyv8p32iyq4j18a4ir4x5p6f3b0z3r34";
  };

  libphidgets = patchVendorUrl rosSuper.libphidgets {
    url = "https://www.phidgets.com/downloads/phidget21/libraries/linux/libphidget/libphidget_2.1.8.20151217.tar.gz";
    sha256 = "0lpaskqxpklm05050wwvdqwhw30f2hpzss8sgyvczdpvvqzjg4vk";
  };

  libg2o = rosSuper.libg2o.overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    # Missing from package.xml; propagated by other dependencies in Ubuntu
    nativeBuildInputs = nativeBuildInputs ++ [ self.openblas ];
  });

  libuvc-camera = rosSuper.libuvc-camera.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace cfg/UVCCamera.cfg --replace-fail python2 python
    '';
  });

  map-server = rosSuper.map-server.overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ self.pkg-config ];
  });

  roscpp = patchBoostSignals rosSuper.roscpp;

  rqt-console = rosSuper.rqt-console.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/bin/rqt_console"
    '';
  });

  rqt-image-view = rosSuper.rqt-image-view.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/bin/rqt_image_view"
    '';
  });

  rqt-plot = rosSuper.rqt-plot.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/bin/rqt_plot"
    '';
  });

  rqt-shell = rosSuper.rqt-shell.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/bin/rqt_shell"
    '';
  });

  rqt-top = rosSuper.rqt-top.overrideAttrs ({
    nativeBuildInputs ? [], postFixup ? "", ...
  }: {
    dontWrapQtApps = false;
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rqt_top/rqt_top"
    '';
  });

  rqt-topic = rosSuper.rqt-topic.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/bin/rqt_topic"
    '';
  });

  rviz = rosSuper.rviz.overrideAttrs ({
    nativeBuildInputs ? [],
    postFixup ? "", ...
  }: {
    dontWrapQtApps = false;
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rviz/rviz"
    '';
  });

  swri-profiler-tools = rosSuper.swri-profiler-tools.overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    dontWrapQtApps = false;
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    postFixup = ''
      wrapQtApp "$out/lib/swri_profiler_tools/profiler"
    '';
  });

  swri-transform-util = (rosSuper.swri-transform-util.override {
    # PROJ 8 finally removed the deprecated proj_api.h header
    proj = self.proj_7;
  }).overrideAttrs ({
    CXXFLAGS ? "", ...
  }: {
    CXXFLAGS = CXXFLAGS + " -DACCEPT_USE_OF_DEPRECATED_PROJ_API_H";
  });

  teb-local-planner = rosSuper.teb-local-planner.overrideAttrs ({
    patches ? [], cmakeFlags ? [], ...
  }: {
    patches = patches ++ [
      # fix: undefined reference to `int boost::math::sign<double>(double const&)'
      # https://github.com/rst-tu-dortmund/teb_local_planner/pull/413
      (self.fetchpatch {
        url = "https://github.com/rst-tu-dortmund/teb_local_planner/commit/c6e0990105811cba87747e87ec878d6610ee2ac5.patch";
        hash = "sha256-td4yejakcXUH6b6wUa2d85R4dyegc5pbZLDEzTTz/x8=";
      })
    ];
    # FindSUITESPARSE.cmake uses find_path() to search for the directory
    # containing libcholmod.so, but this is primarily designed to find include
    # directories and doesn't search ${CMAKE_PREFIX_PATH}/lib.
    cmakeFlags = cmakeFlags ++ [ "-DSUITESPARSE_LIBRARY_DIR=${self.suitesparse}/lib" ];
  });
}

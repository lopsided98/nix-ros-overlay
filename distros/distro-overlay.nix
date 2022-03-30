{ distro, python }:
self: super:
let
  pythonOverridesFor = with self.lib; superPython: fix (python: superPython.override ({
    packageOverrides ? _: _: {}, ...
  }: {
    self = python;
    packageOverrides = composeExtensions packageOverrides
      (pySelf: pySuper: optionalAttrs pySuper.isPy3k {
        wxPython = pySelf.wxPython_4_0;
      });
  }));

  base = rosSelf: rosSuper: {
    lib = super.lib // import ../lib { inherit self rosSelf; };

    callPackage = self.newScope rosSelf;

    buildRosPackage = rosSelf.callPackage ./build-ros-package { };

    buildEnv = rosSelf.callPackage ./build-env {
      inherit (self) buildEnv;
    };

    python = pythonOverridesFor python;
    pythonPackages = rosSelf.python.pkgs;

    python3 = pythonOverridesFor self.python3;
    python3Packages = rosSelf.python3.pkgs;

    boost = self.boost.override {
      python = rosSelf.python;
      enablePython = true;
    };
  };

  overrides = rosSelf: rosSuper: with rosSelf.lib; {
    # ROS package overrides/fixups

    # Fix usages of global Boost placeholders
    # https://github.com/ros/actionlib/pull/197
    actionlib = rosSuper.actionlib.overrideAttrs ({
      patches ? [], ...
    }: {
      patches = patches ++ [ (self.fetchpatch {
        url = "https://github.com/lopsided98/actionlib/commit/d675dd75d9080d2832591e0220d19e0f0d981446.patch";
        stripLen = 1;
        includes = [ "include/*" ];
        sha256 = "sha256-bB8PkiDisgBgZoDyieiT1dSQK/xSfG8ZZOJyigX0SYY=";
      }) ];
    });

    ament-cmake-core = rosSuper.ament-cmake-core.overrideAttrs ({ ... }: {
      setupHook = ./ament-cmake-core-setup-hook.sh;
    });

    camera-calibration-parsers = patchBoostPython rosSuper.camera-calibration-parsers;

    catkin = rosSuper.catkin.overrideAttrs ({
      propagatedBuildInputs ? [],
      prePhases ? [],
      postPatch ? "", ...
    }: let
      setupHook = rosSelf.callPackage ./catkin-setup-hook { };
    in {
      propagatedBuildInputs = [ self.cmake setupHook ] ++ propagatedBuildInputs;

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

    cob-light = patchBoostSignals rosSuper.cob-light;

    cv-bridge = patchBoostPython rosSuper.cv-bridge;

    cyclonedds = rosSuper.cyclonedds.overrideAttrs ({
      cmakeFlags ? [], preConfigure ? "", ...
    }: {
      # Tries to download something with maven
      cmakeFlags = cmakeFlags ++ [ "-DBUILD_IDLC=OFF" ];

      # Fix running ddsconf from within the build directory (probably an RPATH
      # issue)
      preConfigure = preConfigure + ''
        export LD_LIBRARY_PATH="$(pwd)/build/lib"
      '';
    });

    dynamic-reconfigure = rosSuper.dynamic-reconfigure.overrideAttrs ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + ''
        substituteInPlace cmake/setup_custom_pythonpath.sh.in \
          --replace '#!/usr/bin/env sh' '#!${self.stdenv.shell}'
      '';
    });

    fake-localization = patchBoostSignals rosSuper.fake-localization;

    fcl-catkin = patchVendorUrl rosSuper.fcl-catkin {
      url = "https://github.com/flexible-collision-library/fcl/archive/v0.6.1.zip";
      sha256 = "0nryr4hg3lha1aaz35wbqr42lb6l8alfcy6slj2yn2dgb5syrmn2";
    };

    fmilibrary-vendor = patchVendorGit rosSuper.fmilibrary-vendor {
      url = "https://github.com/modelon-community/fmi-library.git";
      fetchgitArgs = {
        rev = "2.1";
        sha256 = "177rlw1ba1y0ahi8qfpg0sflh8mjdl6fmffwjg2a5vxyxwdwrjvh";
      };
    };

    # This is a newer version than the build system tries to download, but this
    # version doesn't try to download tons of random files during build.
    foonathan-memory-vendor = patchVendorGit rosSuper.foonathan-memory-vendor {
      url = "https://github.com/foonathan/memory.git";
      fetchgitArgs = {
        rev = "293f88d3a7cc49b25ffd4e9f27b1e4a8e14ee0d7";
        sha256 = "0nr74xv1ajvblvnl070l83zsr69nc1ws7fl2fvfjdq90kvwrz7in";
      };
    };

    gazebo-ros = rosSuper.gazebo-ros.overrideAttrs ({ ... }:{
      setupHook = ./gazebo-ros-setup-hook.sh;
    });

    gmapping = patchBoostSignals rosSuper.gmapping;

    image-cb-detector = patchBoostSignals rosSuper.image-cb-detector;

    laser-cb-detector = patchBoostSignals rosSuper.laser-cb-detector;

    libfranka = rosSuper.libfranka.overrideAttrs ({
      patches ? [], cmakeFlags ? [], ...
    }: {
      patches = patches ++ [ (self.fetchpatch {
        url = "https://github.com/frankaemika/libfranka/commit/fbec4214e288d8dd941ddf6c192c9f6f9757d808.patch";
        sha256 = "00n0xm8chsw16prh02prdn0n6rihpbjwn3jdqmj4l8rwwjdiq8d5";
      }) ];
      # Uses custom flag to disable tests. Attempts to download GTest without
      # this.
      cmakeFlags = cmakeFlags ++ [ "-DBUILD_TESTS=OFF" ];
    });

    libpcan = patchVendorUrl rosSuper.libpcan {
      url = "http://www.peak-system.com/fileadmin/media/linux/files/peak-linux-driver-8.3.tar.gz";
      sha256 = "0f6v3vjszyg1xp99jx48hyv8p32iyq4j18a4ir4x5p6f3b0z3r34";
    };

    libphidget21 = patchVendorUrl rosSuper.libphidget21 {
      url = "https://www.phidgets.com/downloads/phidget21/libraries/linux/libphidget/libphidget_2.1.9.20190409.tar.gz";
      sha256 = "07w54dmr75vq2imngfy66nk1sxlvkzhl2p6g362q0a02f099jy0f";
    };

    libphidgets = patchVendorUrl rosSuper.libphidgets {
      url = "https://www.phidgets.com/downloads/phidget21/libraries/linux/libphidget/libphidget_2.1.8.20151217.tar.gz";
      sha256 = "0lpaskqxpklm05050wwvdqwhw30f2hpzss8sgyvczdpvvqzjg4vk";
    };

    librealsense = rosSuper.librealsense.overrideAttrs ({
      patches ? [], ...
    }: {
      patches = patches ++ [ (self.fetchpatch {
        url = "https://github.com/IntelRealSense/librealsense/commit/86e434c86096b91a722f22bd039c2b6eeb8174ab.patch";
        sha256 = "1kcvm32cx9zzd56k9yglnyxizmfgar3a6cybjdwpyf6ljrxjlpp5";
      }) ];
    });

    librealsense2 = rosSuper.librealsense2.overrideAttrs ({
      buildInputs ? [], ...
    }: {
      buildInputs = buildInputs ++ [ self.glfw self.libGLU ];
    });

    libuvc-camera = rosSuper.libuvc-camera.overrideAttrs ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + ''
        substituteInPlace cfg/UVCCamera.cfg --replace python2 python
      '';
    });

    map-server = rosSuper.map-server.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      nativeBuildInputs = nativeBuildInputs ++ [ self.pkgconfig ];
    });

    mapviz = rosSuper.mapviz.overrideAttrs ({
      patches ? [],
      nativeBuildInputs ? [],
      postFixup ? "", ...
    }: {
      # Fix linking to GLUT with CMake 3.22
      patches = patches ++ [ (self.fetchpatch {
        url = "https://github.com/swri-robotics/mapviz/commit/b3c8e19bc1b7e1d2478c0b13a848d7caf40b4e5e.patch";
        sha256 = "sha256-abjP9Pn3v+aLZBOI0KiGihHgt2WLadDvdaKVyk2IlPY=";
        stripLen = 1;
      }) ];

      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/mapviz/mapviz"
      '';
    });

    mavlink = rosSuper.mavlink.overrideAttrs ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + ''
        substituteInPlace CMakeLists.txt --replace /usr/bin/env '${self.coreutils}/bin/env'
        patchShebangs pymavlink/tools/mavgen.py
      '';
      ROS_PYTHON_VERSION = if rosSelf.python.isPy3k then 3 else 2;
    });

    message-filters = patchBoostSignals rosSuper.message-filters;

    message-relay = rosSuper.message-relay.overrideAttrs ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + ''
        patchShebangs scripts
      '';
    });

    open-manipulator-control-gui = rosSuper.open-manipulator-control-gui.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = ''
        wrapQtApp "$out/lib/open_manipulator_control_gui/open_manipulator_control_gui"
      '';
    });

    plotjuggler = rosSuper.plotjuggler.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    });

    pr2-tilt-laser-interface = patchBoostSignals rosSuper.pr2-tilt-laser-interface;

    python-qt-binding = rosSuper.python-qt-binding.overrideAttrs ({
      propagatedNativeBuildInputs ? [],
      postPatch ? "", ...
    }: {
      propagatedNativeBuildInputs = propagatedNativeBuildInputs ++ [ rosSelf.pythonPackages.sip_4 ];
      postPatch = ''
        sed -e "1 i\\import PyQt5" \
            -e "s#sipconfig\._pkg_config\['default_mod_dir'\], 'PyQt5'#PyQt5.__path__[0]#" \
            -i cmake/sip_configure.py
      '' + postPatch;

      dontWrapQtApps = true;

      setupHook = self.writeText "python-qt-binding-setup-hook" ''
        _pythonQtBindingPreFixupHook() {
          # Prevent /build RPATH references
          rm -rf devel/lib
        }
        preFixupHooks+=(_pythonQtBindingPreFixupHook)
      '';
    });

    roscpp = patchBoostSignals rosSuper.roscpp;

    rmw-implementation = rosSuper.rmw-implementation.overrideAttrs ({
      propagatedBuildInputs ? [], ...
    }: {
      # The default implementation must be available to all dependent packages
      # at build time.
      propagatedBuildInputs = with rosSelf; [
        rmw-fastrtps-cpp
      ] ++ propagatedBuildInputs;
    });

    rqt-graph = rosSuper.rqt-graph.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/bin/rqt_graph"
      '';
    });

    rqt-gui = rosSuper.rqt-gui.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/bin/rqt"
      '';
    });

    rqt-msg = rosSuper.rqt-msg.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    });

    rqt-plot = rosSuper.rqt-plot.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/bin/rqt_plot"
      '';
    });
    
    rqt-publisher = rosSuper.rqt-publisher.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    });

    rqt-py-console = rosSuper.rqt-py-console.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    });

    rqt-reconfigure = rosSuper.rqt-reconfigure.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    });

    rqt-service-caller = rosSuper.rqt-service-caller.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    });

    rqt-shell = rosSuper.rqt-shell.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/bin/rqt_shell"
      '';
    });

    rqt-srv = rosSuper.rqt-srv.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    });

    rqt-top = rosSuper.rqt-top.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    });

    rqt-topic = rosSuper.rqt-topic.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    });

    rviz = rosSuper.rviz.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rviz/rviz"
      '';
    });

    # Fix compatibility with assimp 5.1
    # https://github.com/ros2/rviz/pull/817
    rviz-assimp-vendor = rosSuper.rviz-assimp-vendor.overrideAttrs ({
      patches ? [], ...
    }: {
      patches = patches ++ [ (self.fetchpatch {
        url = "https://github.com/ros2/rviz/commit/dfbc93e23505f708a84ba7f5d8ebd1164f662804.patch";
        stripLen = 1;
        sha256 = "sha256-JW3GgSukrWR19je35crNeQNSDR6ZRoFRzpR/MBcwMws=";
      }) ];
    });

    rviz-ogre-vendor = rosSuper.rviz-ogre-vendor.overrideAttrs ({
      preFixup ? "", ...
    }: {
      preFixup = ''
        # Prevent /build RPATH references
        rm -r ogre_install
      '' + preFixup;
    });

    rxcpp-vendor = patchVendorUrl rosSuper.rxcpp-vendor {
      url = "https://github.com/ReactiveX/RxCpp/archive/v4.1.0.tar.gz";
      sha256 = "1smxrcm0s6bz05185dx1i2xjgn47rq7m247pblil6p3bmk3lkfyk";
    };

    shared-queues-vendor = patchVendorUrl (patchVendorUrl rosSuper.shared-queues-vendor {
      url = "https://github.com/cameron314/concurrentqueue/archive/8f65a8734d77c3cc00d74c0532efca872931d3ce.zip";
      sha256 = "0cmsmgc87ndd9hiv187xkvjkn8fipn3hsijjc864h2lfcyigbxq1";
    }) {
      url = "https://github.com/cameron314/readerwriterqueue/archive/ef7dfbf553288064347d51b8ac335f1ca489032a.zip";
      sha256 = "1255n51y1bjry97n4w60mgz6b9h14flfrxb01ihjf6pwvvfns8ag";
    };

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
      patches ? [], CXXFLAGS ? "", ...
    }: {
      # Use CMake to find PROJ
      # https://github.com/swri-robotics/marti_common/pull/649
      patches = patches ++ [ (self.fetchpatch {
        url = "https://github.com/swri-robotics/marti_common/commit/6f8dbca5d4adaca84823249fde8bec3360ab1fb8.patch";
        stripLen = 1;
        sha256 = "sha256-kO4U26RttaC5mEhsCqtZV5rUlS0QIaA6I7Bhxlnb8d8=";
      }) ];

      CXXFLAGS = CXXFLAGS + " -DACCEPT_USE_OF_DEPRECATED_PROJ_API_H";
    });

    # Fix compatibility with yaml-cpp 0.7.0
    # https://github.com/swri-robotics/marti_common/pull/648
    swri-yaml-util = rosSuper.swri-yaml-util.overrideAttrs ({
      patches ? [], ...
    }: {
      patches = patches ++ [ (self.fetchpatch {
        url = "https://github.com/lopsided98/marti_common/commit/674b2d22e5c4e4950ffcaabaef09cf9ba2111557.patch";
        stripLen = 1;
        sha256 = "sha256-HXdDCd9Op/WvYEpzAbVBdhyICobl6KKg9Smt1sewokw=";
      }) ];
    });

    tf = patchBoostSignals rosSuper.tf;

    tf2 = patchBoostSignals rosSuper.tf2;

    tinydir-vendor = patchVendorUrl rosSuper.tinydir-vendor {
      url = "https://github.com/cxong/tinydir/archive/1.2.4.tar.gz";
      sha256 = "1qjwky7v4b9d9dmxzsybnhiz6xgx94grc67sdyvlp1d4kfkfsl4w";
    };

    turtlesim = rosSuper.turtlesim.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = ''
        wrapQtApp "$out/lib/turtlesim/turtlesim_node"
      '';
    });

    uncrustify-vendor = patchVendorUrl rosSuper.uncrustify-vendor {
      url = "https://github.com/uncrustify/uncrustify/archive/uncrustify-0.68.1.tar.gz";
      sha256 = "04ndwhcn9iv3cy4p5wgh5z0vx2sywqlydyympn9m3h5458w1aijh";
    };

    urdf = patchBoostPython rosSuper.urdf;

    yaml-cpp-vendor = patchVendorUrl rosSuper.yaml-cpp-vendor {
      url = "https://github.com/jbeder/yaml-cpp/archive/0f9a586ca1dc29c2ecb8dd715a315b93e3f40f79.zip";
      sha256 = "1g45f71mk4gyca550177qf70v5cvavlsalmg7x8bi59j6z6f0mgz";
    };
  };
in self.lib.makeExtensible (rosSelf: self.rosPackages.lib.mergeOverlays [
  base
  (import (./. + "/${distro}/generated.nix"))
  overrides
  (import (./. + "/${distro}/overrides.nix") self)
] rosSelf {})

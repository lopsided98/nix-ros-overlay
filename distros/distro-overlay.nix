{ distro, python }:
self: super:
let
  base = rosSelf: rosSuper: {
    lib = super.lib // import ../lib { inherit self rosSelf; };
  
    callPackage = self.newScope rosSelf;

    buildRosPackage = rosSelf.callPackage ./build-ros-package { };

    buildEnv = rosSelf.callPackage ./build-env {
      inherit (self) buildEnv;
    };

    inherit python;
    pythonPackages = rosSelf.python.pkgs;

    boost = self.boost.override {
      python = rosSelf.python;
      enablePython = true;
    };
  };

  overrides = rosSelf: rosSuper: with rosSelf.lib; {
    # ROS package overrides/fixups

    ament-cmake-core = rosSuper.ament-cmake-core.overrideAttrs ({
      propagatedBuildInputs ? [], ...
    }: {
      propagatedBuildInputs = [ self.cmake rosSelf.ament-package ] ++ propagatedBuildInputs;
      setupHook = ./ament-cmake-core-setup-hook.sh;
    });

    camera-calibration-parsers = patchBoostPython rosSuper.camera-calibration-parsers;

    catkin = rosSuper.catkin.overrideAttrs ({
      propagatedBuildInputs ? [],
      prePhases ? [],
      postPatch ? "", ...
    }: let
      setupHook = self.callPackage ./catkin-setup-hook { };
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

    cv-bridge = (patchBoostPython rosSuper.cv-bridge).overrideAttrs ({
      patches ? [],
      propagatedBuildInputs ? [], ...
    }: {
      patches = patches ++ [ (self.fetchpatch {
        url = "https://github.com/ros-perception/vision_opencv/commit/fbfb25303bd77db6a5943043cc4303d0c0b835c9.patch";
        sha256 = "0pznlbqp99f6bzql3q1sjy9sqk2746wgp7qdqj790j5z0vb2v2r6";
        stripLen = 1;
      }) ];
      propagatedBuildInputs = propagatedBuildInputs ++ [ rosSelf.pythonPackages.opencv3 ];
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

    fmilibrary-vendor = patchVendorGit rosSuper.fmilibrary-vendor {
      url = "https://github.com/modelon-community/fmi-library.git";
      fetchgitArgs = {
        rev = "2.1";
        sha256 = "177rlw1ba1y0ahi8qfpg0sflh8mjdl6fmffwjg2a5vxyxwdwrjvh";
      };
    };

    # This build system contains fractal levels of stupidity
    foonathan-memory-vendor = patchVendorGit rosSuper.foonathan-memory-vendor {
      url = "https://github.com/foonathan/memory.git";
      fetchgitArgs = {
        sha256 = "1n7xxi61wzpixb3kldnl826syb4yml613q4i38d0cciydhy1gwzl";
        # Needed by the postFetch, then removed there
        leaveDotGit = true;
        # Prevent the build system from trying to download random files
        postFetch = ''
          cd "$out/cmake/comp"
          git fetch https://github.com/foonathan/compatibility.git
          git checkout -f cf13bff238397aab0d8c49b7f6263233cf8a2396
          sed -i 's|\(set(COMP_REMOTE_URL\s\).*|\1"file://''${CMAKE_CURRENT_LIST_DIR}/")|' \
            comp_base.cmake
          rm -rf "$out/.git"
        '';
      };
    };

    gazebo-ros = rosSuper.gazebo-ros.overrideAttrs ({ ... }:{
      setupHook = ./gazebo-ros-setup-hook.sh;
    });

    gmapping = patchBoostSignals rosSuper.gmapping;

    image-cb-detector = patchBoostSignals rosSuper.image-cb-detector;

    laser-cb-detector = patchBoostSignals rosSuper.laser-cb-detector;

    libpcan = patchVendorUrl rosSuper.libpcan {
      url = "http://www.peak-system.com/fileadmin/media/linux/files/peak-linux-driver-8.3.tar.gz";
      sha256 = "0f6v3vjszyg1xp99jx48hyv8p32iyq4j18a4ir4x5p6f3b0z3r34";
    };

    libphidget21 = patchVendorUrl rosSuper.libphidget21 {
      url = "https://www.phidgets.com/downloads/phidget21/libraries/linux/libphidget/libphidget_2.1.9.20190409.tar.gz";
      sha256 = "07w54dmr75vq2imngfy66nk1sxlvkzhl2p6g362q0a02f099jy0f";
    };

    libphidget22 = patchVendorUrl rosSuper.libphidget22 {
      url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.4.20190605.tar.gz";
      sha256 = "1ab4d7ngvx009vajqv3kxw0s77z0hdd9xb8in1mvx86i1l3vndxa";
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

    libuvc-camera = rosSuper.libuvc-camera.overrideAttrs ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + ''
        substituteInPlace cfg/UVCCamera.cfg --replace python2 python
      '';
    });

    libyaml-vendor = patchVendorUrl rosSuper.libyaml-vendor {
      url = "https://github.com/yaml/libyaml/archive/10c907871f1ccd779c7fccf6b81a62762b5c4e7b.zip";
      sha256 = "0v6ks4hpxmakgymcfvafynla76gl3866grgwf4vjdsb4rsvr13vx";
    };

    map-server = rosSuper.map-server.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      nativeBuildInputs = nativeBuildInputs ++ [ self.pkgconfig ];
    });

    mapviz = rosSuper.mapviz.overrideAttrs ({
      nativeBuildInputs ? [],
      postFixup ? "", ...
    }: {
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
    });

    message-filters = patchBoostSignals rosSuper.message-filters;

    message-relay = rosSuper.message-relay.overrideAttrs ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + ''
        patchShebangs scripts
      '';
    });

    pr2-tilt-laser-interface = patchBoostSignals rosSuper.pr2-tilt-laser-interface;

    python-qt-binding = rosSuper.python-qt-binding.overrideAttrs ({
      propagatedNativeBuildInputs ? [],
      postPatch ? "", ...
    }: {
      propagatedNativeBuildInputs = propagatedNativeBuildInputs ++ [ rosSelf.pythonPackages.sip ];
      postPatch = ''
        sed -e "s#sipconfig\._pkg_config\['default_sip_dir'\]#'${rosSelf.pythonPackages.pyqt5}/share/sip'#" \
            -e "s#qtconfig\['QT_INSTALL_HEADERS'\]#'${self.qt5.qtbase.dev}/include'#g" \
            -i cmake/sip_configure.py
      '' + postPatch;

      setupHook = self.writeText "python-qt-binding-setup-hook" ''
        _pythonQtBindingPreFixupHook() {
          # Prevent /build RPATH references
          rm -rf devel/lib
        }
        preFixupHooks+=(_pythonQtBindingPreFixupHook)
      '';
    });

    roscpp = patchBoostSignals rosSuper.roscpp;

    rosidl-default-runtime = rosSuper.rosidl-default-runtime.overrideAttrs ({
      propagatedBuildInputs ? [], ...
    }: {
      propagatedBuildInputs = [ rosSelf.rmw-fastrtps-cpp ] ++ propagatedBuildInputs;
    });

    rqt-gui = rosSuper.rqt-gui.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    });

    rviz = rosSuper.rviz.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    });

    rviz-ogre-vendor = rosSuper.rviz-ogre-vendor.overrideAttrs ({
      preFixup ? "", ...
    }: {
      dontFixCmake = true;
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

    swri-geometry-util = rosSuper.swri-geometry-util.overrideAttrs ({
      patches ? [], ...
    }: {
      patches = patches ++ [ (self.fetchpatch {
        url = "https://github.com/swri-robotics/marti_common/commit/a8253120b0eb1b3dbba97616dc0c1acce407f5c8.patch";
        stripLen = 1;
        sha256 = "0jnn9npqyiqwp6if29nxx0dyalc9bnaaqhymxlwkh2x71gf5armb";
      }) ];
    });

    swri-opencv-util = rosSuper.swri-opencv-util.overrideAttrs ({
      patches ? [], ...
    }: {
      patches = patches ++ [ (self.fetchpatch {
        url = "https://github.com/swri-robotics/marti_common/commit/b8414d4bc39e689a93582b246b0ba6eaf14feac6.patch";
        stripLen = 1;
        includes = [ "src/show.cpp" ];
        sha256 = "0n1akps47rgbij7gbylxhxdndzlmzmax09axqdlygx81db6zh1qc";
      }) ];
    });

    swri-transform-util = rosSuper.swri-transform-util.overrideAttrs ({
      CXXFLAGS ? "", ...
    }: {
      CXXFLAGS = CXXFLAGS + " -DACCEPT_USE_OF_DEPRECATED_PROJ_API_H";
    });

    tf = patchBoostSignals rosSuper.tf;

    tf2 = patchBoostSignals rosSuper.tf2;

    tile-map = rosSuper.tile-map.overrideAttrs ({
      patches ? [], ...
    }: {
      patches = patches ++ [ (self.fetchpatch {
        url = "https://github.com/swri-robotics/mapviz/commit/1600eaab695b4047fbf690e356362b4376cfecfd.patch";
        stripLen = 1;
        sha256 = "1g2kw3pz3amzj99a13r398r8cxbpi6ganqlhz2qgd22raw8qnrxx";
      }) ];
    });

    tinydir-vendor = patchVendorUrl rosSuper.tinydir-vendor {
      url = "https://github.com/cxong/tinydir/archive/1.2.4.tar.gz";
      sha256 = "1qjwky7v4b9d9dmxzsybnhiz6xgx94grc67sdyvlp1d4kfkfsl4w";
    };

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
in self.rosPackages.lib.mkOverlay [
  base
  (import (./. + "/${distro}/generated.nix"))
  overrides
  (import (./. + "/${distro}/overrides.nix") self)
]

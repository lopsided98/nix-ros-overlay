# Top level package set
self:
# Distro package set
rosSelf: rosSuper: let
  inherit (rosSelf) lib;
in {
  async-web-server-cpp = rosSuper.async-web-server-cpp.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = [
      # Fix compile errors with Boost >= 1.87
      (self.fetchpatch2 {
        url = "https://github.com/fkie/async_web_server_cpp/pull/8/commits/0aa036c4c3908ef0d9ac85bf623a15906bccaefd.patch?full_index=1";
        hash = "sha256-uZym/R8c4e/Ypo8xGQwGdasuFixjbddX9hzQeNqXIDc=";
      })
    ];
  });

  azure-iot-sdk-c = rosSuper.azure-iot-sdk-c.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        "cmake_minimum_required (VERSION 3.5)" \
        "cmake_minimum_required (VERSION 3.10)"
      substituteInPlace \
        deps/azure-macro-utils-c/CMakeLists.txt \
        deps/umock-c/CMakeLists.txt \
        --replace-fail \
        "cmake_minimum_required(VERSION 2.8.11)" \
        "cmake_minimum_required(VERSION 3.10)"
    '';
  });

  camera-aravis2 = rosSuper.camera-aravis2.overrideAttrs ({
    patches ? [], nativeBuildInputs ? [], ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ self.pkg-config ];
    patches = patches ++ [
      # cmake: Find aravis library with pkg-config if available
      # https://github.com/FraunhoferIOSB/camera_aravis2/pull/63
      (self.fetchpatch2 {
        url = "https://github.com/FraunhoferIOSB/camera_aravis2/commit/fb2460536f51841452ff31458da428fa5c8e5804.patch?full_index=1";
        hash = "sha256-6Jd6ul8Kr1QyllLrrU2p6DIon5ri/JqPrr1A6ZlwUA0=";
        stripLen = 1;
      })
    ];
  });

  canopen-core = rosSuper.canopen-core.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # https://github.com/ros-industrial/ros2_canopen/pull/399
    postPatch = ''
      substituteInPlace ConfigExtras.cmake --replace-fail \
        "find_package(Boost REQUIRED system thread)" \
        "find_package(Boost REQUIRED thread)"
    '';
  });

  cartographer = rosSuper.cartographer.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # Fix "ld.bfd: libcartographer.a(tsdf_2d.cc.o): undefined reference to symbol '_ZN4absl12lts_2026010712log_internal17MakeCheckOpStringImmEEPKcT_T0_S4_'"
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        "absl::utility" \
        "absl::utility absl::log_internal_check_op"
    '';
  });

  clips-vendor = lib.patchAmentVendorFile rosSuper.clips-vendor { };

  cyclonedds = rosSuper.cyclonedds.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = [
      # Fix paths in pkg-config file
      # https://github.com/eclipse-cyclonedds/cyclonedds/pull/1453
      (self.fetchpatch2 {
        url = "https://github.com/eclipse-cyclonedds/cyclonedds/commit/3ff967e32b8078d497a8b9c70735849c04eaebf6.patch?full_index=1";
        hash = "sha256-j1NXVjtVfN+eIBK8S7Kx/70gJrkrirFi83ZFXBuHZfA=";
      })
    ];
  });

  ecl-build = rosSuper.ecl-build.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace cmake/cotire.cmake --replace-fail \
        "cmake_minimum_required(VERSION 2.8.12)" \
        "cmake_minimum_required(VERSION 3.5)"
    '';
  });

  foonathan-memory-vendor = lib.patchExternalProjectGit rosSuper.foonathan-memory-vendor {
    url = "https://github.com/foonathan/memory.git";
    rev = "v0.7-3";
    fetchgitArgs.hash = "sha256-nLBnxPbPKiLCFF2TJgD/eJKJJfzktVBW3SRW2m3WK/s=";
  };

  foxglove-bridge = rosSuper.foxglove-bridge.overrideAttrs({
    postPatch ? "", ...
  }: {
    postPatch = let
      # SDK version from
      # https://github.com/foxglove/foxglove-sdk/blob/main/ros/src/foxglove_bridge/CMakeLists.txt.
      # If the version doesn't match, cmake fails with "Hash mismatch"
      # and we can fix it here.
      FOXGLOVE_SDK_VERSION = "0.23.1";
      systemToPlatform = {
        "x86_64-linux" = "x86_64-unknown-linux-gnu";
        "aarch64-linux" = "aarch64-unknown-linux-gnu";
      };
      systemToHash = {
        "x86_64-linux" = "sha256-uUkpXoDrGpuzVuZXucJXnIhnF/rCkMTkil6YRgY78ug=";
        "aarch64-linux" = "sha256-7CC88ap2n8m3bYT/PhXA3z8KKz7lbrfuRePx5DBmILw=";
      };
      FOXGLOVE_SDK_PLATFORM = systemToPlatform.${self.system};
      sdk = self.fetchurl {
        url = "https://github.com/foxglove/foxglove-sdk/releases/download/sdk%2Fv${FOXGLOVE_SDK_VERSION}/foxglove-v${FOXGLOVE_SDK_VERSION}-cpp-${FOXGLOVE_SDK_PLATFORM}.zip";
        hash = systemToHash.${self.system};
      };
    in
      # Does their CMakeLists.txt support cross compilation?
      postPatch + ''
        substituteInPlace CMakeLists.txt --replace-fail \
          'https://github.com/foxglove/foxglove-sdk/releases/download/sdk%2Fv''${FOXGLOVE_SDK_VERSION}/foxglove-v''${FOXGLOVE_SDK_VERSION}-cpp-''${FOXGLOVE_SDK_PLATFORM}.zip' \
          ${sdk}
      '';
  });

  fuse-core = rosSuper.fuse-core.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # https://github.com/locusrobotics/fuse/pull/424
    postPatch = postPatch + ''
      substituteInPlace \
        include/fuse_core/graph.hpp \
        include/fuse_core/message_buffer.hpp \
        include/fuse_core/transaction.hpp \
        include/fuse_core/timestamp_manager.hpp \
          --replace-fail \
            "#include <boost/range/any_range.hpp>" \
            "#include <boost/type_traits/add_const.hpp>
             #include <boost/range/any_range.hpp>"
    '';
  });

  gazebo = self.gazebo_11;

  geometric-shapes = rosSuper.geometric-shapes.overrideAttrs({
      postPatch ? "", ...
  }: {
      # Remove workaround for Ubuntu-specific dependency hell issue
      postPatch = postPatch + ''
        substituteInPlace CMakeLists.txt --replace-fail \
          'find_package(octomap 1.9.7...<1.10.0 REQUIRED)' \
          'find_package(octomap REQUIRED)'
      '';
  });

  google-benchmark-vendor = lib.patchExternalProjectGit rosSuper.google-benchmark-vendor {
    url = "https://github.com/google/benchmark.git";
    rev = "344117638c8ff7e239044fd0fa7085839fc03021";
    fetchgitArgs.hash = "sha256-gztnxui9Fe/FTieMjdvfJjWHjkImtlsHn6fM1FruyME=";
  };

  gtsam = rosSuper.gtsam.overrideAttrs ({
    nativeBuildInputs ? [], patches ? [], cmakeFlags ? [], ...
  }: {
    # https://github.com/borglab/gtsam/pull/2171
    # boost is optional but enabled by default
    nativeBuildInputs = nativeBuildInputs ++ [ self.boost ];
    patches = [
      # https://github.com/borglab/gtsam/pull/2232 merged upstream
      (self.fetchpatch2 {
        name = "drop-boost-system.patch";
        url = "https://github.com/borglab/gtsam/commit/a0592a6b5ab161194da1b162caaedda78ef3f2bf.patch?full_index=1";
        hash = "sha256-S9YI8/MVthAuuBl3DRR8JCTxTw5Hi+hVz41T95APDu4=";
      })
    ];
    # GCC 15 enables -Woverloaded-virtual by default; DecisionTreeFactor hides
    # base class operator* overloads and has no upstream fix yet
    cmakeFlags = cmakeFlags ++ [ "-DCMAKE_CXX_FLAGS=-Wno-overloaded-virtual" ];
  });

  gz-cmake-vendor = lib.patchGzAmentVendorGit rosSuper.gz-cmake-vendor { };

  gz-common-vendor = (lib.patchGzAmentVendorGit rosSuper.gz-common-vendor {
    patchesFor.gz_common_vendor = [
      (self.fetchpatch2 {
        # Replace FreeImage dependency with stb (#725 updated for Kilted)
        url = "https://github.com/gazebosim/gz-common/commit/7a6bb5bf196c2e3f515fda5c3982190641be36c9.patch?full_index=1";
        hash = "sha256-NMsj9WuOx4JxkF1Noy52s4X41nwqiVXlhWBAE2X/liw=";
        excludes = ["tutorials/install.md"];
      })
    ];
  }).overrideAttrs({
    buildInputs ? [], ...
  }: {
    buildInputs = buildInputs ++ [ self.zlib ];
  });

  gz-dartsim-vendor = lib.patchAmentVendorGit rosSuper.gz-dartsim-vendor { };

  gz-fuel-tools-vendor = lib.patchGzAmentVendorGit rosSuper.gz-fuel-tools-vendor { };

  gz-gui-vendor = (lib.patchGzAmentVendorGit rosSuper.gz-gui-vendor { }).overrideAttrs ({
    postInstall ? "", ...
  }: {
    # "RPATH of binary libGrid3D.so contains a forbidden reference to
    # /build/" (see https://github.com/gazebosim/gz-gui/issues/627).
    postInstall = postInstall + ''
      ${self.patchelf}/bin/patchelf --remove-rpath $out/lib64/gz-gui-9/plugins/libGrid3D.so
    '';
  });

  gz-launch-vendor = lib.patchGzAmentVendorGit rosSuper.gz-launch-vendor { };

  gz-math-vendor = lib.patchGzAmentVendorGit rosSuper.gz-math-vendor { };

  gz-msgs-vendor = lib.patchGzAmentVendorGit rosSuper.gz-msgs-vendor { };

  gz-ogre-next-vendor = (rosSelf.lib.patchAmentVendorGit rosSuper.gz-ogre-next-vendor {
    # https://github.com/OGRECave/ogre-next/pull/562
    patchesFor.gz_ogre_next_vendor = [
      (self.fetchpatch2 {
        # Add simple implementation for STBIImageCodec::magicNumberToFileExt()
        url = "https://github.com/OGRECave/ogre-next/commit/98c9095c6e288fceb59ccb3504d9127d88eb1b51.patch?full_index=1";
        hash = "sha256-Zw6pFjHbDezbO79SLD/yo9tblgph1PKH58PV7r1dcZM=";
      })
      (self.fetchpatch2 {
        # Fix loading of images in STBICodec
        url = "https://github.com/OGRECave/ogre-next/commit/37d4876eb71c70b9eb3464e5b72c6e6d6be03232.patch?full_index=1";
        hash = "sha256-MgqoU9cw0vJcgI7hLuqlVRFdmOTwmQ93FBTgzDl69hg=";
      })
      (self.fetchpatch2 {
        # Handle row padding correctly for 1, 2 and 4-channel images in STBICodec
        url = "https://github.com/OGRECave/ogre-next/commit/96a3bb016b2c9b4f9cca9df1a65d619220e21d78.patch?full_index=1";
        hash = "sha256-Mczkta9SUSKs6HpQ9L/59dLxaqfBEGcIqSI9qPUUH34=";
      })
      (self.fetchpatch2 {
        # Fix STLAllocator compatibility with GCC 15 and modern C++ standards
        url = "https://github.com/wentasah/ogre-next/commit/45f449741b3283b43bec6572db8ad6d7af9b2efa.patch?full_index=1";
        hash = "sha256-Hs+seuQrQZY9G6H4NqV4QVevtDyBzd+qMyvxIK+buBI=";
      })
      (self.fetchpatch2 {
        # Fix RGB channel swap in STBICodec RGB-to-RGBA conversion
        # https://github.com/OGRECave/ogre-next/pull/567
        url = "https://github.com/OGRECave/ogre-next/commit/960aabcda2f0ba5d2281d742506aab3e3e91b396.patch?full_index=1";
        hash = "sha256-WU/91+H7z8bUzFc0XH2zGc3Yv7Th0beVxdRFy9JWpDo=";
      })
    ];
  }).overrideAttrs(({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt \
        --replace-fail 'CMAKE_ARGS' 'CMAKE_ARGS -DOGRE_CONFIG_ENABLE_STBI:BOOL=ON'
    '';
    dontFixCmake = true;
  }));

  gz-physics-vendor = lib.patchGzAmentVendorGit rosSuper.gz-physics-vendor { };

  gz-plugin-vendor = lib.patchGzAmentVendorGit rosSuper.gz-plugin-vendor { };

  gz-rendering-vendor = lib.patchGzAmentVendorGit rosSuper.gz-rendering-vendor { };

  gz-sensors-vendor = lib.patchGzAmentVendorGit rosSuper.gz-sensors-vendor { };

  gz-sim-vendor = lib.patchGzAmentVendorGit rosSuper.gz-sim-vendor { };

  gz-tools-vendor = (lib.patchGzAmentVendorGit rosSuper.gz-tools-vendor { }).overrideAttrs({
    nativeBuildInputs ? [],
    propagatedNativeBuildInputs ? [],
    qtWrapperArgs ? [],
    postFixup ? "", ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    propagatedNativeBuildInputs = propagatedNativeBuildInputs ++ [
      self.qt5.qtquickcontrols2
      self.qt5.qtgraphicaleffects
      self.pkg-config
    ];
    qtWrapperArgs = qtWrapperArgs ++ [
      # Gazebo is currently broken on Wayland
      # https://gazebosim.org/docs/ionic/troubleshooting/#wayland-issues
      "--set-default QT_QPA_PLATFORM xcb"
    ];
    postFixup = postFixup + ''
      wrapQtApp "$out/bin/gz"
    '';
  });

  gz-transport-vendor = (lib.patchGzAmentVendorGit rosSuper.gz-transport-vendor { }).overrideAttrs({
    buildInputs ? [], ...
  }: {
    buildInputs = buildInputs ++ [ self.libsodium ];
  });

  gz-utils-vendor = lib.patchGzAmentVendorGit rosSuper.gz-utils-vendor { };

  iceoryx-hoofs = rosSuper.iceoryx-hoofs.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch2 {
        url = "https://github.com/eclipse-iceoryx/iceoryx/commit/acc1e979a2d5ca30737efb077b00b42f1c4a8429.patch?full_index=1";
        hash = "sha256-M2ItntTMGqH6YkUNMEF0opJobyqgbZq62vBkyWxxol0=";
        stripLen = 1;
      })
    ];
  });

  io-context = rosSuper.io-context.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # fix for asio 1.36: https://github.com/ros-drivers/transport_drivers/pull/113
      (self.fetchpatch2 {
        url = "https://github.com/nim65s/transport_drivers/commit/7be52848f624c82ea720416360d7a754fff65c33.patch?full_index=1";
        hash = "sha256-IYQTlSnJjUvnOp0RbN+1P7C/RclAjouyzmBT9LJpyN4=";
        stripLen = 1;
      })
    ];
  });

  lttngpy = rosSuper.lttngpy.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = [
      # fix compile error
      (self.fetchpatch2 {
        url = "https://github.com/ros2/ros2_tracing/commit/e175cde407a2da7fab2a75890cdb9d0e626cc73b.patch?full_index=1";
        hash = "sha256-U0G8/WNTmaDHu0NN8OxGBFJlnebgW2XZIVNeTpUqgmY=";
        stripLen = 1;
      })
    ];
  });

  # Fixes build error in autoware-lanelet2-extension:
  # Imported target "lanelet2_maps::lanelet2_maps" includes non-existent path
  #   "/nix/store/85v2zq13fh16v2zy6nyljz7f4caqvrab-ros-humble-lanelet2-maps-1.2.2-r1/include"
  # https://github.com/fzi-forschungszentrum-informatik/Lanelet2/pull/406
  lanelet2-maps = rosSuper.lanelet2-maps.overrideAttrs ({ postPatch ? "", ...}: {
    postPatch = postPatch + ''
      sed -i -e '/mrt_add_library/,+3 d' CMakeLists.txt
    '';
  });

  ld08-driver = rosSuper.ld08-driver.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # https://github.com/ROBOTIS-GIT/ld08_driver/pull/36
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt \
        --replace-fail "Boost::system" "Boost::boost" \
        --replace-fail "REQUIRED system" "REQUIRED"
    '';
  });

  lely-core-libraries = (lib.patchExternalProjectGit rosSuper.lely-core-libraries {
    url = "https://gitlab.com/lely_industries/lely-core.git";
    rev = "fb735b79cab5f0cdda45bc5087414d405ef8f3ab";
    fetchgitArgs = {
      hash = "sha256-TpEWho+lbhXGaZ24+86eVJttrxH2Kc9gZVOGWeR0LBE=";
      leaveDotGit = true;
    };
  }).overrideAttrs ({
    postPatch ? "", ...
  }: {
    # ref. https://gitlab.com/lely_industries/lely-core/-/merge_requests/143
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        "CONFIGURE_COMMAND autoreconf -i <SOURCE_DIR>" \
        "PATCH_COMMAND patch -p1 < ${self.fetchpatch2 {
          url = "https://gitlab.com/lely_industries/lely-core/-/commit/6ed995fa86d828957b636a11470f150830d877ec.patch";
          hash = "sha256-/kn+BMs9JHigmSXi6BrlHGmt06eF7mzJiKi26a7JQ3c=";
        }}
        CONFIGURE_COMMAND autoreconf -i <SOURCE_DIR>"
    '';
  });

  libphidget22 = lib.patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.19.20240304.tar.gz";
    hash = "sha256-GpzGMpQ02s/X/XEcGoozzMjigrbqvAu81bcb7QG+36E=";
  };

  mcap-vendor = (lib.patchVendorUrl rosSuper.mcap-vendor {
    url = "https://github.com/foxglove/mcap/archive/refs/tags/releases/cpp/v1.4.0.tar.gz";
    hash = "sha256-ZP8+URGfN//Pr53uy9mHp8tNTZA110o/03czlaRw/aE=";
  }).overrideAttrs ( {
    postPatch ? "", ...
  }: {
    # ref. https://github.com/foxglove/mcap/pull/1371
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        "URL_HASH SHA1=354d894efb6a0c3968885c0e6d43224ff61fa762 # v1.4.0" \
        "URL_HASH SHA1=354d894efb6a0c3968885c0e6d43224ff61fa762 # v1.4.0
        PATCH_COMMAND sed -i \"1i #include <cstdint>\" cpp/mcap/include/mcap/types.hpp"
    '';
  });

  mimick-vendor = (lib.patchAmentVendorGit rosSuper.mimick-vendor { }).overrideAttrs({ ... }: {
    # Remove once https://github.com/Snaipe/Mimick/commit/321fcc74c1828e73af72cd75460857e1a3a549b9
    # propagates to a ROS release
    NIX_CFLAGS_COMPILE = toString [ "-Wno-error=cpp" ];
  });

  motion-capture-tracking = rosSuper.motion-capture-tracking.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace deps/libmotioncapture/deps/pybind11/CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 3.4)" \
        "cmake_minimum_required(VERSION 3.10)"
      substituteInPlace deps/libmotioncapture/deps/vrpn/client_src/CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 2.6)" \
        "cmake_minimum_required(VERSION 3.10)"
      substituteInPlace deps/libmotioncapture/deps/vrpn/cmake/FindOpenHaptics.cmake --replace-fail \
        "cmake_minimum_required(VERSION 2.6.3)" \
        "cmake_minimum_required(VERSION 3.10)"
      substituteInPlace deps/libmotioncapture/deps/vrpn/quat/CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 2.6)" \
        "cmake_minimum_required(VERSION 3.10)"
      substituteInPlace deps/libmotioncapture/deps/vrpn/CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 2.8.3)" \
        "cmake_minimum_required(VERSION 3.10)"
    '';
  });

  moveit-core = rosSuper.moveit-core.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      # Remove workaround for Ubuntu-specific dependency hell issue
      substituteInPlace CMakeLists.txt --replace-fail \
        'find_package(octomap 1.9.7...<1.10.0 REQUIRED)' \
        'find_package(octomap REQUIRED)'

      # https://github.com/moveit/moveit2/pull/3727
      substituteInPlace ConfigExtras.cmake --replace-fail "  system" ""
    '';
  });

  moveit-kinematics = rosSuper.moveit-kinematics.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # https://github.com/moveit/moveit2/pull/3727
    postPatch = postPatch + ''
      substituteInPlace ConfigExtras.cmake --replace-fail "system" ""
    '';
  });

  moveit-planners-ompl = rosSuper.moveit-planners-ompl.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # https://github.com/moveit/moveit2/pull/3727
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail " system" ""
    '';
  });

  moveit-ros-control-interface = rosSuper.moveit-ros-control-interface.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # https://github.com/moveit/moveit2/pull/3727
    postPatch = postPatch + ''
      substituteInPlace ConfigExtras.cmake --replace-fail \
        "Boost REQUIRED COMPONENTS system thread" \
        "Boost REQUIRED COMPONENTS thread"
    '';
  });

  moveit-ros-move-group = rosSuper.moveit-ros-move-group.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # https://github.com/moveit/moveit2/pull/3727
    postPatch = postPatch + ''
      substituteInPlace ConfigExtras.cmake --replace-fail " system" ""
    '';
  });

  moveit-ros-occupancy-map-monitor = rosSuper.moveit-ros-occupancy-map-monitor.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # Remove workaround for Ubuntu-specific dependency hell issue
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        'find_package(octomap 1.9.7...<1.10.0 REQUIRED)' \
        'find_package(octomap REQUIRED)'
    '';
  });

  moveit-ros-planning = rosSuper.moveit-ros-planning.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # https://github.com/moveit/moveit2/pull/3727
    postPatch = postPatch + ''
      substituteInPlace ConfigExtras.cmake --replace-fail " system" ""
    '';
  });

  moveit-ros-planning-interface = rosSuper.moveit-ros-planning-interface.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # https://github.com/moveit/moveit2/pull/3727
    postPatch = postPatch + ''
      substituteInPlace ConfigExtras.cmake --replace-fail " system" ""
    '';
  });

  moveit-ros-visualization = rosSuper.moveit-ros-visualization.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # https://github.com/moveit/moveit2/pull/3727
    postPatch = postPatch + ''
      substituteInPlace ConfigExtras.cmake --replace-fail " system" ""
    '';
  });

  moveit-ros-warehouse = rosSuper.moveit-ros-warehouse.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # https://github.com/moveit/moveit2/pull/3727
    postPatch = postPatch + ''
      substituteInPlace ConfigExtras.cmake --replace-fail " system" ""
    '';
  });

  moveit-setup-framework = rosSuper.moveit-setup-framework.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Add missing #include <fmt/ranges.h>
      (self.fetchpatch2 {
        url = "https://github.com/moveit/moveit2/commit/b3c23c989ff45c66ec692a71535330b42be09879.patch?full_index=1";
        hash = "sha256-lETKOTjyioqajQ5d5KEPMUUmdJ60l5fQBCz1sWEuTr8=";
        includes = [ "src/urdf_config.cpp" ];
        stripLen = 2;
      })
    ];
  });

  moveit-visual-tools = rosSuper.moveit-visual-tools.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # https://github.com/moveit/moveit_visual_tools/pull/154
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail " system" ""
    '';
  });

  mp-units-vendor = lib.patchAmentVendorGit rosSuper.mp-units-vendor {};

  mqtt-client = rosSuper.mqtt-client.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace include/mqtt_client/MqttClient.hpp --replace-fail \
        "#include <fmt/format.h>" \
        "#include <fmt/format.h>
         #include <fmt/ranges.h>"
    '';
  });

  mrt-cmake-modules = rosSuper.mrt-cmake-modules.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # drop boost system
      # ref. https://github.com/KIT-MRT/mrt_cmake_modules/pull/41
      (self.fetchpatch2 {
        url = "https://github.com/KIT-MRT/mrt_cmake_modules/commit/332c1d733336c6ed5c8c2c8e21146e75d8c7f565.patch?full_index=1";
        hash = "sha256-oNmIPw7SaDGFQyBPUyMzg8mgSc49MyjuBMya0Odmqfs=";
      })
    ];
  });

  nav2-behavior-tree = rosSuper.nav2-behavior-tree.overrideAttrs({
    ...
  }: {
    NIX_CFLAGS_COMPILE = toString [
      "-Wno-error=maybe-uninitialized"
      "-Wno-error=free-nonheap-object"
      "-Wno-error=null-dereference"
    ];
  });

  nav2-collision-monitor = rosSuper.nav2-collision-monitor.overrideAttrs({
    CXXFLAGS ? "", ...
  }: {
    CXXFLAGS = "${CXXFLAGS} -Wno-error=overloaded-virtual=";
  });

  nav2-costmap-2d = rosSuper.nav2-costmap-2d.overrideAttrs({
    CXXFLAGS ? "", ...
  }: {
    CXXFLAGS = "${CXXFLAGS} -Wno-error=array-bounds";
  });

  nav2-mppi-controller = rosSuper.nav2-mppi-controller.overrideAttrs({
    CXXFLAGS ? "", ...
  }: {
    CXXFLAGS = "${CXXFLAGS} -Wno-error=null-dereference";
  });

  nlohmann-json-schema-validator-vendor = (lib.patchExternalProjectGit rosSuper.nlohmann-json-schema-validator-vendor {
    url = "https://github.com/pboettch/json-schema-validator.git";
    rev = "5ef4f903af055550e06955973a193e17efded896";
    revVariable = "nlohmann_json_schema_validator_version";
    fetchgitArgs.hash = "sha256-b02OFUx0BxUA6HN6IaacSg1t3RP4o7NND7X0U635W8U=";
  }).overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        'PATCH_COMMAND patch -p1 < ''${CMAKE_CURRENT_LIST_DIR}/patch_cmakelist' \
        'PATCH_COMMAND patch -p1 < ''${CMAKE_CURRENT_LIST_DIR}/patch_cmakelist
        && sed -i -e "s|cmake_minimum_required(VERSION 3.2)|cmake_minimum_required(VERSION 3.5)|" CMakeLists.txt'
    '';
  });

  ompl = rosSuper.ompl.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # https://github.com/ompl/ompl/pull/1306 merged
      (self.fetchpatch2 {
        url = "https://github.com/ompl/ompl/commit/44eaf82b6e9829d15317884f9b78ab24618c5f6f.patch?full_index=1";
        hash = "sha256-SSC0Uk3ddHwRdv81cY7DRJS9uekYgr2Zv13Yk0bWl2M=";
      })
    ];
  });

  openvdb-vendor = (lib.patchAmentVendorGit rosSuper.openvdb-vendor {}).overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace openvdb_vendor-extras.cmake \
        --replace-fail "\''${openvdb_vendor_DIR}/../../../opt/openvdb_vendor/lib/cmake/OpenVDB" \
                       "$out/lib/cmake/OpenVDB"
    '';
  });

  popf = (rosSuper.popf.override {
    # Fix "libfl.so.2: undefined reference to `yylex'"
    flex = self.flex_2_5_35;
  }).overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # cmake: fix missing includes, ref. https://github.com/fmrico/popf/pull/12
      (self.fetchpatch2 {
        url = "https://github.com/nim65s/popf/commit/e8ba226f67e0513689d0efc84e9b4e8b55394bd4.patch?full_index=1";
        hash = "sha256-fHorf5CyGDIbx3WLb4XOfGVSXhOXjtBq9iVNLywCDQQ=";
      })
    ];
  });

  rcdiscover = rosSuper.rcdiscover.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        "cmake_minimum_required (VERSION 3.1)" \
        "cmake_minimum_required (VERSION 3.10)"\
    '';
  });

  rc-genicam-api = rosSuper.rc-genicam-api.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # It's no longer needed to ignore "Error on non-existent target in get_target_property."
    postPatch = postPatch + ''
      substituteInPlace cmake/configure_link_libs.cmake --replace-fail \
        "cmake_policy(SET CMP0045 OLD)" \
        ""
    '';
  });

  rmf-task = rosSuper.rmf-task.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # fix for GCC 15, ref. https://github.com/open-rmf/rmf_task/pull/133
      (self.fetchpatch2 {
        url = "https://github.com/nim65s/rmf_task/commit/8aaacbe009022540cce1cd3ff3282413cf08a42c.patch?full_index=1";
        hash = "sha256-xpn2yWMRyXUPTf0OdCjGGkKcNLHO6jAnWz4NeXInI2I=";
        stripLen = 1;
      })
    ];
  });

  rmf-traffic = rosSuper.rmf-traffic.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = [
      # https://github.com/open-rmf/rmf_traffic/pull/131
      (self.fetchpatch2 {
        url = "https://github.com/open-rmf/rmf_traffic/commit/c20b8d71507880387185666c78d105557e5003a9.patch?full_index=1";
        hash = "sha256-2f2jT9Be5f/Bzh5sLxXwmdD+fwtvdoDuBrejlns1GWg=";
        stripLen = 1;
      })
    ];
  });

  rosidlcpp-generator-core = rosSuper.rosidlcpp-generator-core.override { fmt = self.fmt_9; };
  rosidlcpp-generator-cpp = rosSuper.rosidlcpp-generator-cpp.override { fmt = self.fmt_9; };
  rosidlcpp-generator-py = rosSuper.rosidlcpp-generator-py.override { fmt = self.fmt_9; };
  rosidlcpp-generator-type-description = rosSuper.rosidlcpp-generator-type-description.override { fmt = self.fmt_9; };
  rosidlcpp-typesupport-fastrtps-c = rosSuper.rosidlcpp-typesupport-fastrtps-c.override { fmt = self.fmt_9; };
  rosidlcpp-typesupport-fastrtps-cpp = rosSuper.rosidlcpp-typesupport-fastrtps-cpp.override { fmt = self.fmt_9; };

  rot-conv = rosSuper.rot-conv.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 3.3)" \
        "cmake_minimum_required(VERSION 3.10)"\
    '';
  });

  rtabmap = rosSuper.rtabmap.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # https://github.com/introlab/rtabmap/commit/739628aef9cd765025dd2a0b99c8540abe65e808
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        "filesystem system" \
        "filesystem"
    '';
  });

  rviz-ogre-vendor = lib.patchAmentVendorGit rosSuper.rviz-ogre-vendor {
    tarSourceArgs.hook = let
      version = "1.79";
      imgui = self.fetchFromGitHub rec {
        name = "${repo}-${version}";
        owner = "ocornut";
        repo = "imgui";
        rev = "v${version}";
        hash = "sha256-GIVhZ8Q7WebfHeKeJdVABXrTT26FOS7updncbv2LRnQ=";
      };
      imguiTar = lib.tarSource { } imgui;
    in ''
      substituteInPlace Components/Overlay/CMakeLists.txt \
        --replace-fail ${lib.escapeShellArg imgui.url} file://${lib.escapeShellArg imguiTar}
      substituteInPlace CMakeLists.txt \
        --replace-fail 'cmake_minimum_required(VERSION 3.3.0)' 'cmake_minimum_required(VERSION 3.5)'
    '';
  };

  rviz-rendering = rosSuper.rviz-rendering.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace src/rviz_rendering/render_system.cpp \
        --replace-fail /opt/rviz_ogre_vendor ""
    '';
  });

  sdformat-vendor = lib.patchGzAmentVendorGit rosSuper.sdformat-vendor { };

  sick-scan-xd = rosSuper.sick-scan-xd.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # fix for gcc15, ref https://github.com/SICKAG/sick_scan_xd/pull/557
      (self.fetchpatch2 {
        url = "https://github.com/SICKAG/sick_scan_xd/commit/f5ac360b4cfb319c981b022a9b817a5e86639d5c.patch?full_index=1";
        hash = "sha256-UJQZO0cStf7b3890BBrpHBxzgWnJXPOxmW6SKsuAsWw=";
      })
    ];
  });

  slam-toolbox = rosSuper.slam-toolbox.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # https://github.com/SteveMacenski/slam_toolbox/pull/854
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt lib/karto_sdk/CMakeLists.txt \
        --replace-fail " system" ""
    '';
  });

  shared-queues-vendor = lib.patchVendorUrl rosSuper.shared-queues-vendor {
    url = "https://github.com/cameron314/readerwriterqueue/archive/ef7dfbf553288064347d51b8ac335f1ca489032a.zip";
    hash = "sha256-TyFt3d78GidhDGD17KgjAaZl/qvAcGJP8lmu4EOxpYg=";
  };

  sick-safevisionary-base = rosSuper.sick-safevisionary-base.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 3.0.2)" \
        "cmake_minimum_required(VERSION 3.10)"\
    '';
  });

  spatio-temporal-voxel-layer = rosSuper.spatio-temporal-voxel-layer.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # boost removed in https://github.com/SteveMacenski/spatio_temporal_voxel_layer/pull/356
    # but that does not apply cleanly
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail "COMPONENTS system thread" "COMPONENTS thread"
    '';
  });

  turtlesim = rosSuper.turtlesim.overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    dontWrapQtApps = false;
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    postFixup = ''
        wrapQtApp "$out/lib/turtlesim/turtlesim_node"
      '';
  });

  ublox-gps = rosSuper.ublox-gps.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix for asio 1.36, ref https://github.com/KumarRobotics/ublox/pull/273
      (self.fetchpatch2 {
        url = "https://github.com/nim65s/ublox/commit/da37a9628db91aaafbcbe8b247c28c0d5863159f.patch?full_index=1";
        hash = "sha256-S1h+tw9juDe10I/oITnTYkGFtybI7sMEO7BftKhHo1I=";
        stripLen = 1;
      })
    ];
  });

  udp-driver = rosSuper.udp-driver.overrideAttrs ({
    patches ? [], ...
  }: {
    # fix for asio 1.36: https://github.com/ros-drivers/transport_drivers/pull/114
    patches = patches ++ [
      (self.fetchpatch2 {
        url = "https://github.com/nim65s/transport_drivers/commit/6a5a003a07850afda9681843978f1c5f46d04000.patch?full_index=1";
        hash = "sha256-rOBbfYxqdrA0hQsl+dFKhyuEsLNXHIF1fj54sSf0FQY=";
        stripLen = 1;
      })
    ];
  });

  urdfdom = rosSuper.urdfdom.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix CMake relative install dir assumptions
      # https://github.com/ros/urdfdom/pull/142
      (self.fetchpatch2 {
        url = "https://github.com/ros/urdfdom/commit/61a7e35cd5abece97259e76aed8504052b2f5b53.patch?full_index=1";
        hash = "sha256-VaAjqVAytynFy03qpHfTvqPPcI3jKmd2HGoAQp2CBYQ=";
      })
    ];
  });

  urdfdom-headers = rosSuper.urdfdom-headers.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix CMake relative install dir assumptions
      # https://github.com/ros/urdfdom_headers/pull/90
      (self.fetchpatch2 {
        url = "https://github.com/ros/urdfdom_headers/commit/90efa6072dc239f78d37288a49f24d8aee1aaad2.patch?full_index=1";
        hash = "sha256-XFudlWVAcj2m7PwW/1KakDsG7ArVSijCio+xfVrbfb8=";
      })
    ];
  });

  usb-cam = rosSuper.usb-cam.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Remove undocumented pix_fmt (AV_PIX_FMT_XVMC) breaking the build
      (self.fetchpatch2 {
        url = "https://github.com/ros-drivers/usb_cam/commit/1d1970b1a88fb1be3b961073748879900d2b1a70.patch?full_index=1";
        hash = "sha256-W1ihgS2dHQT1SN2GyVkUdiId82ys6A1a2hwuk26ZXXk=";
      })
      # Remove avcodec_close() removed in FFmpeg 8.0 (avcodec_free_context suffices)
      (self.fetchpatch2 {
        url = "https://github.com/ros-drivers/usb_cam/commit/41805f7eb50f31e16839bb302df1bb5c6f30cb50.patch?full_index=1";
        hash = "sha256-JVoZgReNfYsh30qMFbIM25AALyq1KTdEGh63u1/B2e4=";
      })
    ];
  });

  vrpn = rosSuper.vrpn.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace quat/CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 2.6)" \
        "cmake_minimum_required(VERSION 3.5)"
      substituteInPlace cmake/FindOpenHaptics.cmake --replace-fail \
        "cmake_minimum_required(VERSION 2.6.3)" \
        "cmake_minimum_required(VERSION 3.5)"
      substituteInPlace client_src/CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 2.6)" \
        "cmake_minimum_required(VERSION 3.5)"
    '';
  });

  warehouse-ros-sqlite = rosSuper.warehouse-ros-sqlite.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # https://github.com/moveit/warehouse_ros_sqlite/pull/61
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail " system" ""
    '';
  });

  web-video-server = rosSuper.web-video-server.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # https://github.com/RobotWebTools/web_video_server/pull/200
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt \
        --replace-fail "REQUIRED COMPONENTS system" "REQUIRED" \
        --replace-fail "Boost::system" ""
    '';
  });

  webots-ros2-driver = rosSuper.webots-ros2-driver.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt\
        --replace-fail 'find_package(Python 3.12 EXACT' 'find_package(Python 3.12'
    '';
  });

  zenoh-cpp-vendor = (lib.patchAmentVendorGit rosSuper.zenoh-cpp-vendor {
    # Patch the build.rs script to be able to build internal
    # opaque-types crate without network access.
    patchesFor.zenoh_c_vendor = [
      ./zenoh-cpp-vendor/zenoh-c.patch
      ./zenoh-cpp-vendor/static-init-104.patch
      ./zenoh-cpp-vendor/opaque-types-static-init-104.patch
    ];
  }).overrideAttrs(finalAttrs: {
    nativeBuildInputs ? [], postPatch ? "", passthru ? {}, ...
  }: let
    outputHashes = {
      "zenoh-1.6.2" = "sha256-uHm75MxW7ifmYOB3EPVjsPDWKYmk9nk9BLAOt7tvDzo=";
    };
    zenoh-c-source = finalAttrs.passthru.amentVendorSrcs.zenoh_c_vendor;
  in {
    postPatch = postPatch + ''
      ln -s ${zenoh-c-source}/Cargo.lock Cargo.lock
    '';
    nativeBuildInputs = nativeBuildInputs ++ [
      self.rustPlatform.cargoSetupHook
      self.rustc
    ];
    cargoDeps = self.rustPlatform.importCargoLock {
      lockFile = "${zenoh-c-source}/Cargo.lock";
      inherit outputHashes;
    };

    # Prepare vendored dependencies for internal opaque-types crate.
    # Execute in subshell to not change variables set by the normal
    # cargoSetupPostUnpackHook.
    preBuild = ''
      (
        mkdir nix-zenoh-opaque-types
        cd nix-zenoh-opaque-types
        cargoDeps=${self.rustPlatform.importCargoLock {
          lockFile = "${zenoh-c-source}/build-resources/opaque-types/Cargo.lock";
          inherit outputHashes;
        }}
        cargoSetupPostUnpackHook
      )
      # Export information for use by our patched build.rs script.
      export NIX_ZENOH_OPAQUE_TYPES_CARGO_CONFIG=$PWD/nix-zenoh-opaque-types/.cargo/config.toml
    '';
  });

  zmqpp-vendor = lib.patchExternalProjectGit rosSuper.zmqpp-vendor {
    url = "https://github.com/zeromq/zmqpp.git";
    originalRev = "master";
    rev = "da73a138f290274cfd604b3f05a908956390a66e";
    fetchgitArgs = {
      hash = "sha256-VwZcSoUS/Dhw+dMRDP/neNUTNEUBd0kxjK8qGv/WJRQ=";
      postFetch = ''
        substituteInPlace $out/CMakeLists.txt --replace-fail \
          "cmake_minimum_required(VERSION 2.8.12)" \
          "cmake_minimum_required(VERSION 3.5)"
      '';
    };
  };
}

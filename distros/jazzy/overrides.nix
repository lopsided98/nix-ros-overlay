# Top level package set
self:
# Distro package set
rosSelf: rosSuper: let
  inherit (rosSelf) lib;
in {
  # TODO: Remove after https://github.com/autowarefoundation/agnocast/pull/1188
  # appears in ROS release
  agnocastlib = rosSuper.agnocastlib.overrideAttrs ({
    propagatedBuildInputs ? [], ...
  }: {
    propagatedBuildInputs = propagatedBuildInputs ++ [
      rosSelf.message-filters
    ];
  });

  async-web-server-cpp = rosSuper.async-web-server-cpp.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = [
      # Fix compile errors with Boost >= 1.87
      (self.fetchpatch2 {
        url = "https://github.com/fkie/async_web_server_cpp/pull/8/commits/0aa036c4c3908ef0d9ac85bf623a15906bccaefd.patch";
        hash = "sha256-GXUYxWmNq2W7DCetmgHGD5/MFBWgDYFNIdUThwj8vt8=";
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
        url = "https://github.com/FraunhoferIOSB/camera_aravis2/commit/fb2460536f51841452ff31458da428fa5c8e5804.patch";
        hash = "sha256-1jkrN+u+IKbZROUP0d2Toe51U1v1jgqQZPZmUEOk4CQ=";
        stripLen = 1;
      })
    ];
  });

  clips-vendor = lib.patchAmentVendorFile rosSuper.clips-vendor { };

  cyclonedds = rosSuper.cyclonedds.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = [
      # Fix paths in pkg-config file
      # https://github.com/eclipse-cyclonedds/cyclonedds/pull/1453
      (self.fetchpatch {
        url = "https://github.com/eclipse-cyclonedds/cyclonedds/commit/3ff967e32b8078d497a8b9c70735849c04eaebf6.patch";
        hash = "sha256-F5zofoO0YbYfqLrb6s30un9k9+R8rQazLHw+uND1UxE=";
      })
    ];
  });

  domain-bridge = rosSuper.domain-bridge.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Don't use rosbag2_cpp/typesupport_helpers.hpp for Jazzy and later
      # https://github.com/ros2/domain_bridge/pull/89
      (self.fetchpatch2 {
        url = "https://github.com/ros2/domain_bridge/commit/4abe8a63ba82c816ccb46ec67bc89b05ff842604.patch";
        hash = "sha256-R+v5SC/yKMsIPuuXVDrrJ/G6DfKHjUr/58dVBFiz+U4=";
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

  event-camera-tools = rosSuper.event-camera-tools.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Remove unused include of rosbag2_cpp/typesupport_helpers.hpp
      # https://github.com/ros-event-camera/event_camera_tools/pull/27
      (self.fetchpatch2 {
        url = "https://github.com/ros-event-camera/event_camera_tools/commit/d6ed377c7af8c929f77f46204127e2e344a530bd.patch";
        hash = "sha256-H1Iep7otW/sGTvfDZERmE8jXdbXrO2VjEoIW1mMF4Gg=";
      })
    ];
  });

  event-image-reconstruction-fibar = rosSuper.event-image-reconstruction-fibar.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Remove unused include of rosbag2_cpp/typesupport_helpers.hpp
      # https://github.com/ros-event-camera/event_image_reconstruction_fibar/pull/6
      (self.fetchpatch2 {
        url = "https://github.com/ros-event-camera/event_image_reconstruction_fibar/commit/7f296ace2dcde06a6384425af3f4e8e7ad8eacd4.patch";
        hash = "sha256-oXciDL2uVR7RU2Sshfn6led/fsl8iz8DTy89yiYVvNQ=";
      })
    ];
  });

  fuse-core = rosSuper.fuse-core.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Don't fail with boost >= 1.86
      # https://github.com/locusrobotics/fuse/pull/423
      (self.fetchpatch2 {
        url = "https://github.com/wentasah/fuse/commit/037b417d9db394b3d5154a800283c30d0ae30cee.patch";
        hash = "sha256-j3ezP0QYP55mhj+F60Yv0Mv8M8Nu/AHmMoPn1lmI4Bg=";
        stripLen = 1;
      })
    ];
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
      FOXGLOVE_SDK_VERSION = "0.16.5";
      systemToPlatform = {
        "x86_64-linux" = "x86_64-unknown-linux-gnu";
        "aarch64-linux" = "aarch64-unknown-linux-gnu";
      };
      systemToHash = {
        "x86_64-linux" = "sha256-jkln7HRGoGtaBMR7VLzUzs/yrYd24ALvOAPtSnB2hB0=";
        "aarch64-linux" = "sha256-VMvFfGClUEc+CnX482DvtvokXrt/WC2176ZPHCl+VU8=";
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
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt gtsam/3rdparty/metis/CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 3.0)" \
        "cmake_minimum_required(VERSION 3.5)"
    '';
  });

  gz-cmake-vendor = lib.patchGzAmentVendorGit rosSuper.gz-cmake-vendor { };

  gz-common-vendor = (lib.patchGzAmentVendorGit rosSuper.gz-common-vendor {
    patchesFor.gz_common_vendor = [
      (self.fetchpatch2 {
        # Replace FreeImage dependency with stb (gazebosim#725 updated for Jazzy)
        url = "https://github.com/wentasah/gz-common/commit/9fbe891b3a8f30ff11e8367b1aecea5b0ef7521e.patch";
        hash = "sha256-TqGMvFLR81P3AJm+GK/Ot1i+EDGGE/E0HqLtpcKDZt4=";
      })
      (self.fetchpatch2 {
        # Added missing includes (#672)
        url = "https://github.com/gazebosim/gz-common/commit/8f235cb2cb7ae9c2251c8ef155a2980ba4f0e764.patch";
        hash = "sha256-0R0T/HTJzA6rx10psBz2+YycUnIDn2FaetinkprCQOE=";
      })
    ];
  }).overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    # https://github.com/gazebo-release/gz_common_vendor/pull/2
    nativeBuildInputs = nativeBuildInputs ++ [ self.pkg-config ];
  });

  gz-dartsim-vendor = lib.patchAmentVendorGit rosSuper.gz-dartsim-vendor { };

  gz-fuel-tools-vendor = lib.patchGzAmentVendorGit rosSuper.gz-fuel-tools-vendor { };

  gz-gui-vendor = (lib.patchGzAmentVendorGit rosSuper.gz-gui-vendor {
    patchesFor.gz_gui_vendor = [
      # Fix compatibility with protobuf v30 (cpp 6.30.0)
      (self.fetchpatch2 {
        url = "https://github.com/gazebosim/gz-gui/commit/8db77b5d0bdc4e87dbc17383d4e15dd8e95a2ccc.patch";
        hash = "sha256-5Pb3dPAcJJ8Esd5wmD0vhfJjfTQeZpBk9yMDbF1QLZc=";
      })
    ];
  }).overrideAttrs ({
    postInstall ? "", ...
  }: {
    # "RPATH of binary libGrid3D.so contains a forbidden reference to
    # /build/" (see https://github.com/gazebosim/gz-gui/issues/627).
    postInstall = postInstall + ''
      ${self.patchelf}/bin/patchelf --remove-rpath $out/lib*/gz-gui-8/plugins/libGrid3D.so
    '';
  });

  gz-launch-vendor = lib.patchGzAmentVendorGit rosSuper.gz-launch-vendor {
    patchesFor.gz_launch_vendor = [
      # Fix compatibility with protobuf v30 (cpp 6.30.0)
      (self.fetchpatch2 {
        url = "https://github.com/gazebosim/gz-launch/commit/246d180753c758445b7f1c11b3ae3b1840a65ae4.patch";
        hash = "sha256-ySv5YF9LacOW2owxoW9CvLYQ9LklYlD4LM39OqpgApQ=";
      })
    ];
  };

  gz-math-vendor = lib.patchGzAmentVendorGit rosSuper.gz-math-vendor { };

  gz-msgs-vendor = lib.patchGzAmentVendorGit rosSuper.gz-msgs-vendor {
    patchesFor.gz_msgs_vendor = [
      # Fix compatibility with protobuf v30 (cpp 6.30.0)
      (self.fetchpatch2 {
        url = "https://github.com/gazebosim/gz-msgs/commit/ebdd05f6d51c990876085bcc9db9f79df59d375a.patch";
        hash = "sha256-EkonVJ7Q3XJvXnqkhYWxNrknnEOFpNvjwcnyc1bQHDE=";
      })
    ];
  };

  gz-physics-vendor = lib.patchGzAmentVendorGit rosSuper.gz-physics-vendor { };

  gz-plugin-vendor = lib.patchGzAmentVendorGit rosSuper.gz-plugin-vendor { };

  gz-rendering-vendor = lib.patchGzAmentVendorGit rosSuper.gz-rendering-vendor {
    patchesFor.gz_rendering_vendor = [
      (self.fetchpatch2 {
        # Added missing includes (#1128)
        url = "https://github.com/gazebosim/gz-rendering/commit/b7973e14778baba95c94798b15391183d9261c16.patch";
        hash = "sha256-MWw/jw+MzA4E9q3n5Kyc6ipiGUmrZEyx/QhB/oMkeKI=";
      })
    ];
  };

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
      (self.fetchpatch {
        url = "https://github.com/eclipse-iceoryx/iceoryx/commit/acc1e979a2d5ca30737efb077b00b42f1c4a8429.patch";
        hash = "sha256-npFHdb0a3JBA8T6vke54DA08C93aNc/7c6xrfMBo7zI=";
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
        url = "https://github.com/nim65s/transport_drivers/commit/7be52848f624c82ea720416360d7a754fff65c33.patch";
        hash = "sha256-frE2449PirPJMnln/mGW87JHXCJfb2wo+SBDunTPanc=";
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

  libpointmatcher = rosSuper.libpointmatcher.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix failing build due to deprecated boost::filesystem functions
      (self.fetchpatch {
        url = "https://github.com/norlab-ulaval/libpointmatcher/commit/74435b8f434ffd36aab1c7f309facbe2911403df.patch";
        hash = "sha256-/JaEmFbJrthEpyC4sAHfdn43eHbcSZD78nqgy++OSGM=";
      })
    ];
  });

  mcap-vendor = lib.patchVendorUrl rosSuper.mcap-vendor {
    url = "https://github.com/foxglove/mcap/archive/refs/tags/releases/cpp/v1.3.1.tar.gz";
    hash = "sha256-JCTITBfe8WrEBhWX0rkqLdnHN6qXidUCj1Xz0fmPnac=";
  };

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
    # Remove workaround for Ubuntu-specific dependency hell issue
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        'find_package(octomap 1.9.7...<1.10.0 REQUIRED)' \
        'find_package(octomap REQUIRED)'
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

  moveit-setup-framework = rosSuper.moveit-setup-framework.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Add missing #include <fmt/ranges.h>
      (self.fetchpatch2 {
        url = "https://github.com/moveit/moveit2/commit/b3c23c989ff45c66ec692a71535330b42be09879.patch";
        hash = "sha256-1rVN6kgBNHGG2EH1XCw49PPY1JzPud06l3LZAzp2XNU=";
        includes = [ "src/urdf_config.cpp" ];
        stripLen = 2;
      })
    ];
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

  nav2-behavior-tree = rosSuper.nav2-behavior-tree.overrideAttrs({
    ...
  }: {
    NIX_CFLAGS_COMPILE = toString [
      "-Wno-error=array-bounds"
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
    ...
  }: {
    NIX_CFLAGS_COMPILE = toString [ "-Wno-error=array-bounds" ];
  });

  nav2-mppi-controller = (rosSuper.nav2-mppi-controller.override {
    xtensor = (self.xtensor.override {
      xtl = self.xtl.overrideAttrs (finalAttrs: previousAttrs: {
        version = "0.7.7";
        src = self.fetchFromGitHub {
          owner = "xtensor-stack";
          repo = "xtl";
          rev = finalAttrs.version;
          hash = "sha256-f8qYh8ibC/ToHsUv3OF1ujzt3fUe7kW9cNpGyLqsgqw=";
        };
        postPatch = (previousAttrs.postPatch or "") + ''
          substituteInPlace test/CMakeLists.txt --replace-fail \
            "cmake_minimum_required(VERSION 3.1)" \
            "cmake_minimum_required(VERSION 3.5)"
        '';
      });
    }).overrideAttrs (finalAttrs: previousAttrs: {
      version = "0.25.0";
      src = self.fetchFromGitHub {
        owner = "xtensor-stack";
        repo = "xtensor";
        tag = finalAttrs.version;
        hash = "sha256-hVfdtYcJ6mzqj0AUu6QF9aVKQGYKd45RngY6UN3yOH5=";
      };
    });
  }).overrideAttrs({
    CXXFLAGS ? "", ...
  }: {
    CXXFLAGS = "${CXXFLAGS} -Wno-error=maybe-uninitialized";
  });

  nav2-rviz-plugins = rosSuper.nav2-rviz-plugins.overrideAttrs({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = "https://github.com/ros-navigation/navigation2/commit/e6f500e5b7528737f4a883598293b62c72c83946.patch";
        hash = "sha256-XFQjW9eb/CVF+wDgNTG+wyXoz1Hwa3qEU/cIXRcBY6Y=";
        stripLen = 1;
      })
    ];
  });

  # Fix other off-highway-* packages which need ros-environment
  # https://github.com/bosch-engineering/off_highway_sensor_drivers/pull/24
  off-highway-can = rosSuper.off-highway-can.overrideAttrs ({
    propagatedNativeBuildInputs ? [], ...
  }: {
    propagatedNativeBuildInputs = propagatedNativeBuildInputs ++ [ rosSelf.ros-environment ];
  });

  off-highway-premium-radar = rosSuper.off-highway-premium-radar.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # fix for asio 1.36, ref. https://github.com/bosch-engineering/off_highway_sensor_drivers/pull/33
      (self.fetchpatch2 {
        url = "https://github.com/nim65s/off_highway_sensor_drivers/commit/61c88d4c1c844e2eb24eab30ea23cdd2dfd066b5.patch";
        hash = "sha256-3Dx5Mg1HwSqi8wFQDmXxBHLovCzjdLacjKO7b1bCIKA=";
        stripLen = 1;
      })
    ];
  });

  off-highway-premium-radar-sample = rosSuper.off-highway-premium-radar-sample.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # fix for asio 1.36, ref. https://github.com/bosch-engineering/off_highway_sensor_drivers/pull/33
      (self.fetchpatch2 {
        url = "https://github.com/nim65s/off_highway_sensor_drivers/commit/c2e2fba65f812284790687a0c4f9c5982bd6fd14.patch";
        hash = "sha256-83SK6kU8HmQgpCXJKbYKb2FTzL6AVbKbKeyRRO9+22w=";
        stripLen = 1;
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

  plotjuggler-ros = rosSuper.plotjuggler-ros.overrideAttrs ({
    patches ? [], ...
  }: {
    # Apply a commit from https://github.com/PlotJuggler/plotjuggler-ros-plugins/pull/105
    # (and a few commits before it to avoid conflicts).
    patches = patches ++ [
      # add formatting consistent with plotjuggler App
      (self.fetchpatch2 {
        url = "https://github.com/PlotJuggler/plotjuggler-ros-plugins/commit/3b9e06ce35b33792f738afc22397e8aecb9ad691.patch";
        hash = "sha256-EEiDwji9Y8tAs0adKEgxsae6h9Qy23RzTAeRBHEQB7k=";
      })
      # new formatting rules
      (self.fetchpatch2 {
        url = "https://github.com/PlotJuggler/plotjuggler-ros-plugins/commit/d3575cbd2ba583f0d3c73973979154bfbba87dad.patch";
        hash = "sha256-i1k3KpA1bubXlTlQgDyyBVol7ErDic/LUYIxt1wo+0E=";
      })
      # Replace rosbag2_cpp typesupport helpers with rclcpp typesupport helpers
      # https://github.com/PlotJuggler/plotjuggler-ros-plugins/pull/105
      (self.fetchpatch2 {
        url = "https://github.com/PlotJuggler/plotjuggler-ros-plugins/commit/82b9d41908bc8258d16ba33736bd295b54d8654b.patch";
        hash = "sha256-+haJAdjD3NYCKpkw+mW+kx0CskxknPoY0xx24vNaqV0=";
      })
    ];
  });

  # Fix "libfl.so.2: undefined reference to `yylex'"
  popf = (rosSuper.popf.override {
    # Fix "libfl.so.2: undefined reference to `yylex'"
    flex = self.flex_2_5_35;
  }).overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # cmake: fix missing includes, ref. https://github.com/fmrico/popf/pull/12
      (self.fetchpatch2 {
        url = "https://github.com/nim65s/popf/commit/e8ba226f67e0513689d0efc84e9b4e8b55394bd4.patch";
        hash = "sha256-Sw/rY4MsmoWIpC9VQzimM18mlvdGwb8Q6EmwY2rg0pw=";
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

  rmf-task = rosSuper.rmf-task.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # fix for GCC 15, ref. https://github.com/open-rmf/rmf_task/pull/133
      (self.fetchpatch2 {
        url = "https://github.com/nim65s/rmf_task/commit/8aaacbe009022540cce1cd3ff3282413cf08a42c.patch";
        hash = "sha256-9nXoYlfw6yuXP2TFelWl1/T6ho3G49n5vRoxC5qxQCA=";
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
        url = "https://github.com/open-rmf/rmf_traffic/commit/c20b8d71507880387185666c78d105557e5003a9.patch";
        hash = "sha256-4Elg7oF6OQHd2trn3e+r73hghW9Qf90PrGjID7RsdEI=";
        stripLen = 1;
      })
    ];
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

  # See also overrides in ros2-overlay.nix.
  shared-queues-vendor = lib.patchVendorUrl rosSuper.shared-queues-vendor {
    url = "https://github.com/cameron314/readerwriterqueue/archive/ef7dfbf553288064347d51b8ac335f1ca489032a.zip";
    sha256 = "sha256-TyFt3d78GidhDGD17KgjAaZl/qvAcGJP8lmu4EOxpYg=";
  };

  sdformat-vendor = lib.patchGzAmentVendorGit rosSuper.sdformat-vendor { };

  sick-scan-xd = rosSuper.sick-scan-xd.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # fix for gcc15, ref https://github.com/SICKAG/sick_scan_xd/pull/557
      (self.fetchpatch2 {
        url = "https://github.com/SICKAG/sick_scan_xd/commit/f5ac360b4cfb319c981b022a9b817a5e86639d5c.patch";
        hash = "sha256-zh3UDjy6k7LI3YOYr9F9jt8+4pkdgeOpUUqHcqme6Bs=";
      })
    ];
  });

  sick-safevisionary-base = rosSuper.sick-safevisionary-base.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 3.0.2)" \
        "cmake_minimum_required(VERSION 3.10)"\
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
        url = "https://github.com/nim65s/ublox/commit/da37a9628db91aaafbcbe8b247c28c0d5863159f.patch";
        hash = "sha256-m7lsEHF/uS47zYrNBd5RSL62CmvmNcKXQiLM24R6LZA=";
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
        url = "https://github.com/nim65s/transport_drivers/commit/6a5a003a07850afda9681843978f1c5f46d04000.patch";
        hash = "sha256-0j3Ps2RbkWcv9K+I6KW0fn2/4Nhsw8TIOoZAhAVixMk=";
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
      (self.fetchpatch {
        url = "https://github.com/ros/urdfdom/commit/61a7e35cd5abece97259e76aed8504052b2f5b53.patch";
        hash = "sha256-b3bEbbaSUDkwTEHJ8gVPEb+AR/zuWwLqiAW5g1T1dPU=";
      })
    ];
  });

  urdfdom-headers = rosSuper.urdfdom-headers.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix CMake relative install dir assumptions
      # https://github.com/ros/urdfdom_headers/pull/66
      (self.fetchpatch {
        url = "https://github.com/ros/urdfdom_headers/commit/fa89f2d4744839827f41579004537c966a097681.patch";
        hash = "sha256-w6PPKCpbR4dGsudVEz+SO9ylXVayLPRAl3VvpMt4DHo=";
      })
    ];
  });

  usb-cam = rosSuper.usb-cam.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Remove undocumented pix_fmt (AV_PIX_FMT_XVMC) breaking the build
      (self.fetchpatch {
        url = "https://github.com/ros-drivers/usb_cam/commit/1d1970b1a88fb1be3b961073748879900d2b1a70.patch";
        hash = "sha256-0iWl2DtqdjkyFy7lKa7aLxXjynm4ggNEQLxB45Mqf/Y=";
      })
      # Remove avcodec_close() removed in FFmpeg 8.0 (avcodec_free_context suffices)
      (self.fetchpatch {
        url = "https://github.com/ros-drivers/usb_cam/commit/41805f7eb50f31e16839bb302df1bb5c6f30cb50.patch";
        hash = "sha256-UXjqIHCkplBo5MWmH+ZlcRyy0IJgr8Qdld9QMq03SPI=";
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

  webots-ros2-driver = rosSuper.webots-ros2-driver.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt \
        --replace-fail 'find_package(Python 3.12 EXACT' 'find_package(Python 3.12'
    '';
  });

  zenoh-cpp-vendor = (lib.patchAmentVendorGit rosSuper.zenoh-cpp-vendor {
    # Patch the build.rs script to be able to build internal
    # opaque-types crate without network access.
    patchesFor.zenoh_c_vendor = [ ./zenoh-cpp-vendor/zenoh-c.patch ];
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

  zlib-point-cloud-transport = rosSuper.zlib-point-cloud-transport.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # fix for gcc15, ref. https://github.com/ros-perception/point_cloud_transport_plugins/pull/75
      (self.fetchpatch2 {
        url = "https://github.com/nim65s/point_cloud_transport_plugins/commit/222735dcafb71eef599e44c1cdd8b9b04276a239.patch";
        hash = "sha256-zSjyyvHM+7Fl6wdy/abxDnTONCieFVRG4zH5jeHahGY=";
        stripLen = 1;
      })
    ];
  });

  zmqpp-vendor = lib.patchAmentVendorGit rosSuper.zmqpp-vendor {
    patchesFor.zmqpp_vendor = [ ../humble/zmqpp-vendor/cmake-version.patch ];
  };
}

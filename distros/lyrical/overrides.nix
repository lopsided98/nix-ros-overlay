# Top level package set
self:
# Distro package set
rosSelf: rosSuper: let
  inherit (rosSelf) lib;
in {
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

  battery-state-broadcaster = rosSuper.battery-state-broadcaster.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = [
      # Fix compile error with latest realtime_tools
      # https://github.com/ipa320/ros_battery_monitoring/pull/12
      (self.fetchpatch2 {
        url = "https://github.com/ipa320/ros_battery_monitoring/commit/b9ee8af78e8154b95fc4b8202c53320466c4c69b.patch?full_index=1";
        hash = "sha256-6rYpWL4w2s/BoADZHFNQHFrYQO0pewsvs5ri1M3dTIc=";
        stripLen = 1;
      })
    ];
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

  ecl-build = rosSuper.ecl-build.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace cmake/cotire.cmake --replace-fail \
        "cmake_minimum_required(VERSION 2.8.12)" \
        "cmake_minimum_required(VERSION 3.5)"
    '';
  });

  ffw-robot-manager = rosSuper.ffw-robot-manager.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # ref. https://github.com/ROBOTIS-GIT/ai_worker/pull/88
      (self.fetchpatch2 {
        url = "https://github.com/nim65s/ai_worker/commit/ff57978c1234454b41263165ce3b354f564fe33a.patch?full_index=1";
        hash = "sha256-PTDVhT0rsvcRSZ+/TqUTAA2g2FvlWiUE9Pid5wXCYRo=";
        stripLen = 1;
      })
    ];
  });

  foonathan-memory-vendor = lib.patchExternalProjectGit rosSuper.foonathan-memory-vendor {
    url = "https://github.com/eProsima/memory.git";
    rev = "vendor-1.4.1";
    fetchgitArgs.hash = "sha256-1cQgCT7NvhAgJ5dgF8ZCrrPG/p65zz1UuGDQGrGJOpo=";
  };

  foxglove-bridge = rosSuper.foxglove-bridge.overrideAttrs({
    postPatch ? "", ...
  }: {
    postPatch = let
      # SDK version from
      # https://github.com/foxglove/foxglove-sdk/blob/main/ros/src/foxglove_bridge/CMakeLists.txt.
      # If the version doesn't match, cmake fails with "Hash mismatch"
      # and we can fix it here.
      FOXGLOVE_SDK_VERSION = "0.26.0";
      systemToPlatform = {
        "x86_64-linux" = "x86_64-unknown-linux-gnu";
        "aarch64-linux" = "aarch64-unknown-linux-gnu";
        "x86_64-darwin" = "x86_64-apple-darwin";
        "aarch64-darwin" = "aarch64-apple-darwin";
      };
      systemToHash = {
        "x86_64-linux" = "sha256-j7A7BhEneIrXCJGNGG101P21hxixHP+XydYFUTq1fMY=";
        "aarch64-linux" = "sha256-BxDy7Fq8OVSs9iA7k6lnaNzNGddCr5t4/Nj7u6X2Ilo=";
        "x86_64-darwin" = "sha256-TlkrT+RHufq5EnBvhjp1gzz2vtxcF9PqR01FMe7HIq4=";
        "aarch64-darwin" = "sha256-quLM/rzOS2/3LjZpEqktZXb2EA55zfcdeeQoiXet0PA=";
      };
      FOXGLOVE_SDK_PLATFORM = systemToPlatform.${self.stdenv.hostPlatform.system};
      sdk = self.fetchurl {
        url = "https://github.com/foxglove/foxglove-sdk/releases/download/sdk%2Fv${FOXGLOVE_SDK_VERSION}/foxglove-v${FOXGLOVE_SDK_VERSION}-cpp-${FOXGLOVE_SDK_PLATFORM}.zip";
        hash = systemToHash.${self.stdenv.hostPlatform.system};
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

  google-benchmark-vendor = lib.patchExternalProjectGit rosSuper.google-benchmark-vendor {
    url = "https://github.com/google/benchmark.git";
    rev = "344117638c8ff7e239044fd0fa7085839fc03021";
    fetchgitArgs.hash = "sha256-gztnxui9Fe/FTieMjdvfJjWHjkImtlsHn6fM1FruyME=";
  };

  gtsam = rosSuper.gtsam.overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    # https://github.com/borglab/gtsam/pull/2171
    # boost is optional but enabled by default
    nativeBuildInputs = nativeBuildInputs ++ [ self.boost ];
  });

  gz-cmake-vendor = lib.patchAmentVendorGit rosSuper.gz-cmake-vendor { };

  gz-common-vendor = (lib.patchAmentVendorGit rosSuper.gz-common-vendor { }).overrideAttrs({
    buildInputs ? [], ...
  }: {
    buildInputs = buildInputs ++ [ self.zlib ];
  });

  gz-dartsim-vendor = lib.patchAmentVendorGit rosSuper.gz-dartsim-vendor { };

  gz-fuel-tools-vendor = lib.patchAmentVendorGit rosSuper.gz-fuel-tools-vendor { };

  gz-gui-vendor = lib.patchAmentVendorGit rosSuper.gz-gui-vendor { };

  gz-launch-vendor = lib.patchAmentVendorGit rosSuper.gz-launch-vendor { };

  gz-math-vendor = lib.patchAmentVendorGit rosSuper.gz-math-vendor { };

  gz-msgs-vendor = lib.patchAmentVendorGit rosSuper.gz-msgs-vendor { };

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

  gz-physics-vendor = lib.patchAmentVendorGit rosSuper.gz-physics-vendor { };

  gz-plugin-vendor = lib.patchAmentVendorGit rosSuper.gz-plugin-vendor { };

  gz-rendering-vendor = (lib.patchAmentVendorGit rosSuper.gz-rendering-vendor { }).overrideAttrs({
    nativeBuildInputs ? [],
    ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ self.pkg-config ];
  });

  gz-sensors-vendor = lib.patchAmentVendorGit rosSuper.gz-sensors-vendor { };

  gz-sim-vendor = lib.patchAmentVendorGit rosSuper.gz-sim-vendor { };

  gz-tools-vendor = (lib.patchAmentVendorGit rosSuper.gz-tools-vendor { }).overrideAttrs({
    nativeBuildInputs ? [],
    propagatedNativeBuildInputs ? [],
    qtWrapperArgs ? [],
    postFixup ? "", ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
    propagatedNativeBuildInputs = propagatedNativeBuildInputs ++ [
      self.qt6.qtbase
      self.qt6.qtdeclarative
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

  gz-transport-vendor = (lib.patchAmentVendorGit rosSuper.gz-transport-vendor { }).overrideAttrs({
    buildInputs ? [], ...
  }: {
    buildInputs = buildInputs ++ [ self.libsodium ];
  });

  gz-utils-vendor = lib.patchAmentVendorGit rosSuper.gz-utils-vendor { };

  hardware-interface = rosSuper.hardware-interface.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = [
      # Fix build error with GCC 15 in joint_trajectory_controller
      # https://github.com/ros-controls/ros2_control/pull/3174
      (self.fetchpatch2 {
        url = "https://github.com/wentasah/ros2_control/commit/4f8c27fc8b7e8ff855258318fe3e301f3ac52f99.patch?full_index=1";
        hash = "sha256-l+ouh9M2ZlPjLT5Q3xrLtPpTGAAcfS2AR0VCsOs2V4o=";
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

  # upstream archived
  kinematics-interface-pinocchio = null;

  lanelet2-core = rosSuper.lanelet2-core.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix compilation with Boost 1.87
      (self.fetchpatch2 {
        url = "https://github.com/fzi-forschungszentrum-informatik/Lanelet2/pull/399/commits/ab7d2f4dee299563c6313336c070ed99635aba3f.patch?full_index=1";
        hash = "sha256-aFpKnQwd0FmyaDK2mHi5bWri8nKTWbgAt/PF7EpuYmE=";
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
    rev = "9e3267d26018f6f6babd50786f6ae2af89cc57ea";
    fetchgitArgs = {
      hash = "sha256-A7RsVQwzj59M9+eGTeNt+/yb3rFziJl3fy33K5c36z0=";
      leaveDotGit = true;
    };
  }).overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # fix for python 3.14
      # ref. https://github.com/ros-industrial/ros2_canopen/pull/441/changes
      (self.fetchpatch2 {
        url = "https://github.com/ros-industrial/ros2_canopen/commit/56fc4ec3359dbd07f91b5240a13f633df7d2f785.patch?full_index=1";
        stripLen = 1;
        hash = "sha256-Sx9H06E1aOYPzcLNJcyb9y+FxcNbTgSkS5hxDny1IeA=";
      })
    ];

  });

  libphidget22 = lib.patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.19.20240304.tar.gz";
    hash = "sha256-GpzGMpQ02s/X/XEcGoozzMjigrbqvAu81bcb7QG+36E=";
  };

  librealsense2 = (lib.patchExternalProjectGit rosSuper.librealsense2 {
    file = "CMake/external_libcurl.cmake";
    originalUrl = ''"https://github.com/curl/curl.git"'';
    url = "https://github.com/curl/curl.git";
    originalRev = ''"curl-8_8_0"'';
    rev = "curl-8_8_0";
    fetchgitArgs.hash = "sha256-MjB6k8mDJypyuh6BN2hxy2My7/DfImjw+5iI729snBg=";
  }).overrideAttrs ({
    buildInputs ? [], postPatch ? "", ...
  }: {
    buildInputs = buildInputs ++ [ self.nlohmann_json ];
    postPatch = postPatch + ''
      # Get rid of nlohmann_json vendoring
      substituteInPlace third-party/CMakeLists.txt \
        --replace-fail 'include(CMake/external_json.cmake)' ""
      # Don't try to install to $HOME
      substituteInPlace tools/realsense-viewer/CMakeLists.txt \
        --replace-fail '$ENV{HOME}/Documents/librealsense2/presets' ''\'''${CMAKE_INSTALL_PREFIX}/share/librealsense2/presets'
    '';
  });

  mcap-vendor = lib.patchVendorUrl rosSuper.mcap-vendor {
    url = "https://github.com/foxglove/mcap/archive/refs/tags/releases/cpp/v2.1.3.tar.gz";
    hash = "sha256-GBp8UsyYJETN71Mwh7MhU4sCX8xe7CWOBInWi5zlPe0=";
  };

  mimick-vendor = (lib.patchAmentVendorGit rosSuper.mimick-vendor { }).overrideAttrs({ ... }: {
    # Remove once https://github.com/Snaipe/Mimick/commit/321fcc74c1828e73af72cd75460857e1a3a549b9
    # propagates to a ROS release
    NIX_CFLAGS_COMPILE = toString [ "-Wno-error=cpp" ];
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

  mp-units-vendor = lib.patchAmentVendorGit rosSuper.mp-units-vendor {};

  mrpt-containers = rosSuper.mrpt-containers.overrideAttrs ({
    buildInputs ? [], nativeBuildInputs ? [], ...
  }: {
    # Don't use vendored libfyaml
    nativeBuildInputs = nativeBuildInputs ++ [ self.pkg-config ];
    buildInputs = buildInputs ++ [ self.libfyaml ];
  });

  mrpt-gui = rosSuper.mrpt-gui.overrideAttrs ({
    buildInputs ? [], nativeBuildInputs ? [], ...
  }: {
    # Add dependencies for vendored nanogui
    nativeBuildInputs = nativeBuildInputs ++ [ self.pkg-config ];
    buildInputs = buildInputs ++ [ self.wayland-scanner ];
  });

  mrpt-io = rosSuper.mrpt-io.overrideAttrs ({
    buildInputs ? [], ...
  }: {
    # Don't use built-in zlib
    buildInputs = buildInputs ++ [ self.zlib ];
  });

  mrpt-maps = rosSuper.mrpt-maps.overrideAttrs ({
    buildInputs ? [], ...
  }: {
    # Don't use vendored octomap
    buildInputs = buildInputs ++ [ self.octomap ];
  });

  mrpt-viz = rosSuper.mrpt-viz.overrideAttrs ({
    buildInputs ? [], nativeBuildInputs ? [], ...
  }: {
    # Don't use vendored assimp
    nativeBuildInputs = nativeBuildInputs ++ [ self.pkg-config ];
    buildInputs = buildInputs ++ [ self.assimp ];
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

  nav2-mppi-controller = rosSuper.nav2-mppi-controller.overrideAttrs({
    CXXFLAGS ? "", ...
  }: {
    CXXFLAGS = "${CXXFLAGS} -Wno-error=null-dereference";
  });

  nav2-smoother = rosSuper.nav2-smoother.overrideAttrs({
    CXXFLAGS ? "", ...
  }: {
    CXXFLAGS = "${CXXFLAGS} -Wno-error=null-dereference";
  });

  nav2-util = rosSuper.nav2-util.overrideAttrs({
    propagatedBuildInputs ? [], ...
  }: {
    # https://github.com/ros-navigation/navigation2/pull/6323
    propagatedBuildInputs = propagatedBuildInputs ++ [ rosSelf.angles ];
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
        "CMAKE_ARGS" \
        "COMMAND sed -i \"s|cmake_minimum_required(VERSION 3.2)|cmake_minimum_required(VERSION 3.10)|\" CMakeLists.txt
         CMAKE_ARGS"
    '';
  });

  # Make the PCL derivation compatible with the rtabmap package. The
  # nixpkgs rtabmap derivation (see below) builds against PCL with
  # Qt6-enabled VTK (pcl.override { vtk = vtkWithQt6; }). As a result,
  # its exported rtabmap::core target references the VTK::GUISupportQt
  # target. Downstream packages that call find_package(RTABMap) must
  # use the same PCL configuration; otherwise, the VTK::GUISupportQt
  # target will be undefined, causing CMake to fail. To ensure all ROS
  # packages resolve the PCL dependency consistently to a single
  # version, override the PCL package from nixpkgs with a different
  # version (see ../../pkgs/default.nix). For older ROS distributions,
  # a similar override is used, but with Qt5 instead of Qt6.
  pcl = self.pclWithQt6;

  pcl-conversions = rosSuper.pcl-conversions.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix compile errors in pcl-ros caused by rosidl_buffer introduction
      # https://github.com/ros-perception/perception_pcl/pull/529
      (self.fetchpatch2 {
        url = "https://github.com/ros-perception/perception_pcl/commit/bb5cc41a2491138005bb0f733b0f0e26b8055c50.patch?full_index=1";
        hash = "sha256-fCooAtkdesigd0jggYA7TYmc7LsK0rTL9eLAKAVVDOY=";
        stripLen = 1;
      })
    ];
  });

  # Build against Qt6. Upstream builds against qt5, but in Nix, we get
  # a Qt version conflict.
  plansys2-tools = rosSuper.plansys2-tools.override { qt5 = self.qt6; };

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

  pybind11-json-vendor = lib.patchAmentVendorGit rosSuper.pybind11-json-vendor { };

  # This meta-package is referenced by the rosdep key python3-qt-bindings,
  # which is used by packages such as rqt. These packages depend on Qt5 in
  # older ROS distributions and Qt6 in Lyrical and newer releases.
  #
  # On Ubuntu (and similar distributions), python3-qt-bindings
  # resolves to different system packages depending on the OS version.
  # In Nix, however, we do not use different nixpkgs versions for
  # different ROS distros. Instead, we define the rosdep key to always
  # resolve to python-qt-bindings-deps, and we define this package
  # differently for each ROS distribution to depend on the appropriate
  # Qt version.
  python-qt-bindings-deps = self.stdenv.mkDerivation {
    name = "python-qt-bindings-deps";
    dontUnpack = true;
    dontBuild = true;
    dontInstall = true;
    propagatedBuildInputs = with rosSelf.pythonPackages; [
      pyqt-builder
      pyqt6
      pyqt6-sip
      pyside6
      self.pkg-config
      self.qt6.qtbase
      self.qt6.qtdeclarative
      sip
    ];
    propagatedNativeBuildInputs = [ self.qt6.wrapQtAppsHook ];
  };

  rmf-task-sequence = rosSuper.rmf-task-sequence.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        nlohmann_json_schema_validator::validator nlohmann_json_schema_validator
    '';
  });

  roboplan-oink = rosSuper.roboplan-oink.overrideAttrs ({
    propagatedBuildInputs ? [], ...
  }: {
    # Prevent cmake from fetching osqp-eigen via git
    propagatedBuildInputs = propagatedBuildInputs ++ [ self.osqp-eigen ];
  });


  rosidlcpp-generator-core = rosSuper.rosidlcpp-generator-core.override { fmt = self.fmt_9; };
  rosidlcpp-generator-cpp = rosSuper.rosidlcpp-generator-cpp.override { fmt = self.fmt_9; };
  rosidlcpp-generator-py = rosSuper.rosidlcpp-generator-py.override { fmt = self.fmt_9; };
  rosidlcpp-generator-type-description = rosSuper.rosidlcpp-generator-type-description.override { fmt = self.fmt_9; };
  rosidlcpp-typesupport-fastrtps-c = rosSuper.rosidlcpp-typesupport-fastrtps-c.override { fmt = self.fmt_9; };
  rosidlcpp-typesupport-fastrtps-cpp = rosSuper.rosidlcpp-typesupport-fastrtps-cpp.override { fmt = self.fmt_9; };

  rqt-robot-monitor = rosSuper.rqt-robot-monitor.overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
  });

  # Use rtabmap derivation from nixpkgs, but with the source from ROS.
  rtabmap = self.rtabmap.overrideAttrs ({
    propagatedBuildInputs ? [], version, ...
  }: {
    inherit (rosSuper.rtabmap)
      pname
      version;
    src = rosSuper.rtabmap.src // { tag = lib.head (lib.split "-" version); };
    propagatedBuildInputs = propagatedBuildInputs ++ [
      self.librealsense
      self.octomap
      self.qt6.qtbase
      self.qt6.wrapQtAppsHook
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
    '';
  };

  rviz-rendering = rosSuper.rviz-rendering.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace src/rviz_rendering/render_system.cpp \
        --replace-fail '/ "opt" / "rviz_ogre_vendor"' ""
    '';
  });

  # See also overrides in ros2-overlay.nix.
  rviz2 = rosSuper.rviz2.overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
  });

  sdformat-vendor = lib.patchAmentVendorGit rosSuper.sdformat-vendor { };

  shared-queues-vendor = lib.patchVendorUrl rosSuper.shared-queues-vendor {
    url = "https://github.com/cameron314/readerwriterqueue/archive/ef7dfbf553288064347d51b8ac335f1ca489032a.zip";
    hash = "sha256-TyFt3d78GidhDGD17KgjAaZl/qvAcGJP8lmu4EOxpYg=";
  };

  # Ensure that tinyxml-2 has the same major version as in
  # behaviortree-cpp, which vendors it. Other packages like
  # nav2-behavior-tree include tintinyxml-2 propagated via their
  # dependencies from nixpkgs, which can lead to inconsistencies
  # causing segfaults:
  # https://github.com/lopsided98/nix-ros-overlay/issues/648
  # https://github.com/BehaviorTree/BehaviorTree.CPP/issues/1014
  tinyxml-2 = self.tinyxml-2.overrideAttrs ({
    postPatch ? "", ...
  }: let
    version = "11.0.0";
  in {
    inherit version;
    src = self.fetchFromGitHub {
      owner = "leethomason";
      repo = "tinyxml2";
      tag = version;
      hash = "sha256-rYVQSvxA0nxlZFHwGcOWkxcXZWEvTxR9P+d8E7CSm6U=";
    };
    preConfigure = ''
      v1=$(tar xf ${rosSelf.behaviortree-cpp.src} --wildcards '*/tinyxml2.h' --to-stdout|grep TINYXML2_MAJOR_VERSION)
      v2=$(grep TINYXML2_MAJOR_VERSION tinyxml2.h)
      test "$v1" = "$v2" || { echo "tinyxml-2 version mismatch"; exit 1; }
    '';
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

  slam-toolbox = rosSuper.slam-toolbox.override { qt5 = self.qt6; };

  turtlesim = rosSuper.turtlesim.overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    dontWrapQtApps = false;
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
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

  urdfdom = rosSuper.urdfdom.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix CMake relative install dir assumptions
      # https://github.com/ros/urdfdom/pull/224
      (self.fetchpatch2 {
        url = "https://github.com/ros/urdfdom/commit/229c3ae867ba770dcade50b3ee520d81ff3b0413.patch?full_index=1";
        hash = "sha256-yOkgsmFRVwkmV6XMKaiPkBUIqxhZ6kfGK5H+dieuMls=";
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

  velodyne-pointcloud = rosSuper.velodyne-pointcloud.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # chore: tf2_ros to hpp headers
      # https://github.com/ros-drivers/velodyne/pull/566
      (self.fetchpatch2 {
        url = "https://github.com/ros-drivers/velodyne/commit/674314aaec007027b760a3b023c463d82b6cc083.patch?full_index=1";
        hash = "sha256-Dd0iec7mYMmxaEqI46LAdVSfhrEV6SKMTA+R7sCdhd0=";
        relative = "velodyne_pointcloud";
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
      substituteInPlace CMakeLists.txt\
        --replace-fail 'find_package(Python 3.12 EXACT' 'find_package(Python 3.12'
    '';
  });

  yasmin-factory = rosSuper.yasmin-factory.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Add missing include
      # https://github.com/uleroboticsgroup/yasmin/pull/92
      (self.fetchpatch2 {
        url = "https://github.com/wentasah/yasmin/commit/2445d87187c421b8eb3fc651e12cc28efaaf9867.patch?full_index=1";
        hash = "sha256-lJLzm2E/j2mXn4/3FAti6w7Abfk5pMUwtmc7qAkNf0Y=";
        stripLen = 1;
      })
    ];
  });

  zenoh-cpp-vendor = (lib.patchAmentVendorGit rosSuper.zenoh-cpp-vendor {
    # Patch the build.rs script to be able to build internal
    # opaque-types crate without network access.
    patchesFor.zenoh_c_vendor = [ ./zenoh-cpp-vendor/zenoh-c.patch ];
  }).overrideAttrs(finalAttrs: {
    nativeBuildInputs ? [], postPatch ? "", passthru ? {}, ...
  }: let
    outputHashes = {
      "zenoh-1.8.0" = "sha256-W0mVplCanR1zAoG/rExjD0h01altk0gC9wWeu3DNOqI=";
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

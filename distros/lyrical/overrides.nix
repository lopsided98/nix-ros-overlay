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

  fuse-core = rosSuper.fuse-core.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Don't fail with boost >= 1.86
      # https://github.com/locusrobotics/fuse/pull/423
      (self.fetchpatch2 {
        url = "https://github.com/wentasah/fuse/commit/037b417d9db394b3d5154a800283c30d0ae30cee.patch?full_index=1";
        hash = "sha256-ShWKk5H/6eaViWfAOL0T+ynCps2FgsPWtAZDoUjvR50=";
        stripLen = 1;
      })
    ];
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
    nativeBuildInputs ? [], ...
  }: {
    # https://github.com/borglab/gtsam/pull/2171
    # boost is optional but enabled by default
    nativeBuildInputs = nativeBuildInputs ++ [ self.boost ];
  });

  gz-cmake-vendor = lib.patchAmentVendorGit rosSuper.gz-cmake-vendor { };

  gz-common-vendor = (lib.patchAmentVendorGit rosSuper.gz-common-vendor {
    patchesFor.gz_common_vendor = [
      (self.fetchpatch2 {
        # Replace FreeImage dependency with stb (#725 updated for gz-common7)
        url = "https://github.com/gazebosim/gz-common/commit/73af365810c97f19d3db4068678e3a07690a2fd7.patch?full_index=1";
        hash = "sha256-0JoNlI5LcueF6WdQGhLt9wEGtEvT5rkrywzlWniJfz4=";
        excludes = ["tutorials/install.md"];
      })
    ];
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

  mcap-vendor = lib.patchVendorUrl rosSuper.mcap-vendor {
    url = "https://github.com/foxglove/mcap/archive/refs/tags/releases/cpp/v2.1.3.tar.gz";
    hash = "sha256-GBp8UsyYJETN71Mwh7MhU4sCX8xe7CWOBInWi5zlPe0=";
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

  mp-units-vendor = lib.patchAmentVendorGit rosSuper.mp-units-vendor {};

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

  # Switch to Qt6
  python-qt-binding = rosSuper.python-qt-binding.overrideAttrs ({
    patches ? [], propagatedBuildInputs ? [], ...
  }: {
    patches = patches ++ [
      # ref. https://github.com/ros-visualization/python_qt_binding/pull/143
      (self.fetchpatch2 {
        name = "support-qt6.patch";
        url = "https://github.com/ros-visualization/python_qt_binding/commit/fa854d325ad4fa5f6e788d70b3ba9ccf9ee5c80f.patch?full_index=1";
        hash = "sha256-bszIhxh1ThuUdDDiKoHi7eQA/KGb41XmPjMaGpuf658=";
      })
      (self.fetchpatch2 {
        name = "make-linters-happy.patch";
        url = "https://github.com/ros-visualization/python_qt_binding/commit/bd88c0d5d51add58e329c40bba20a7b04c3df063.patch?full_index=1";
        hash = "sha256-b3aoTkzxn+ngxJXt7mIaqA3oFkiDelxy/b+QuKaQXIo=";
      })
      (self.fetchpatch2 {
        name = "fixes.patch";
        url = "https://github.com/ros-visualization/python_qt_binding/commit/d710e1afb2ac0effed1e8d6ab90eee53354366bb.patch?full_index=1";
        hash = "sha256-+QQzU6FXa+69QG8JaB/miBC1QxsvS9v0mPMJznPHl+c=";
      })
    ];
    propagatedBuildInputs = propagatedBuildInputs ++ (with rosSelf.pythonPackages; [
      pyside6
      pyqt6-sip
    ]);

    dontWrapQtApps = true;

    setupHook = self.writeText "python-qt-binding-setup-hook" ''
        _pythonQtBindingPreFixupHook() {
          # Prevent /build RPATH references
          rm -rf devel/lib
        }
        preFixupHooks+=(_pythonQtBindingPreFixupHook)
      '';
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

  # rqt is broken in rolling due to unfinished qt6 migration.
  # TODO: Remove this once rqt works in rolling.
  ros-gz-sim-demos = rosSuper.ros-gz-sim-demos.override {
    rqt-image-view = null;
    rqt-plot = null;
    rqt-topic  = null;
  };

  rqt-robot-monitor = rosSuper.rqt-robot-monitor.overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
  });

  # Use rtabmap derivation from nixpkgs, but with the source from ROS.
  rtabmap = self.rtabmap.overrideAttrs ({
    propagatedBuildInputs ? [], ...
  }: {
    inherit (rosSuper.rtabmap)
      pname
      version
      src;
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

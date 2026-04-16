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

  battery-state-broadcaster = rosSuper.battery-state-broadcaster.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = [
      # Fix compile error with latest realtime_tools
      # https://github.com/ipa320/ros_battery_monitoring/pull/12
      (self.fetchpatch2 {
        url = "https://github.com/ipa320/ros_battery_monitoring/commit/b9ee8af78e8154b95fc4b8202c53320466c4c69b.patch";
        hash = "sha256-QXcJRw+ByI1p4D5GhWC7tELUu7RW2Yecn8ZqbhXTsVg=";
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
        url = "https://github.com/gazebosim/gz-common/commit/73af365810c97f19d3db4068678e3a07690a2fd7.patch";
        hash = "sha256-tLGyEPkaQQboLCSMesF2Nmb0OXc6QBf52NGcs8KAqs8=";
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
        url = "https://github.com/wentasah/ros2_control/commit/4f8c27fc8b7e8ff855258318fe3e301f3ac52f99.patch";
        hash = "sha256-TfhVA5aSkKOusCylfxne8/MEQcIqCZQU3LeiQ5SdN/A=";
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

  mecanum-drive-controller = rosSuper.mecanum-drive-controller.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # https://github.com/ros-controls/ros2_controllers/pull/2213
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail "std_srvs" ""
    '';
  });

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
        url = "https://github.com/ros-perception/perception_pcl/commit/bb5cc41a2491138005bb0f733b0f0e26b8055c50.patch";
        hash = "sha256-eNkf9YGSlLfcZjCRRCMUM6riNmRKRNzNZkCKbBOqLFs=";
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
      (self.fetchpatch {
        name = "support-qt6.patch";
        url = "https://github.com/ros-visualization/python_qt_binding/commit/fa854d325ad4fa5f6e788d70b3ba9ccf9ee5c80f.patch";
        hash = "sha256-P/xScO83zRL7qtqRzLiHkQtCpYdcxOaXwWj/83GhFpk=";
      })
      (self.fetchpatch {
        name = "make-linters-happy.patch";
        url = "https://github.com/ros-visualization/python_qt_binding/commit/bd88c0d5d51add58e329c40bba20a7b04c3df063.patch";
        hash = "sha256-1YuTIUGDmgFZtz/1LoRIkayH9M84H5rs8QqhW9SnNAQ=";
      })
      (self.fetchpatch {
        name = "fixes.patch";
        url = "https://github.com/ros-visualization/python_qt_binding/commit/d710e1afb2ac0effed1e8d6ab90eee53354366bb.patch";
        hash = "sha256-+ou08BZCIhRMDi9GMyAOLmdoGJNZaqLpA7nMszZOFgg=";
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

  rmw-cyclonedds-cpp = rosSuper.rmw-cyclonedds-cpp.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # We need the patch from #575, but for it to apply cleanly, we need also the preceding commits.
      (self.fetchpatch2 {
        url = "https://github.com/ros2/rmw_cyclonedds/commit/b4963be0c79f5d78ed475cc63ba4215587a85068.patch";
        hash = "sha256-GHgnjBF7w7/sx8PWCpRkTYFKCeIJ1BqpvHFPtgv0M40=";
        stripLen = 1;
      })
      (self.fetchpatch2 {
        url = "https://github.com/ros2/rmw_cyclonedds/commit/5147e01a012103d9cd650faa83ca18257136a362.patch";
        hash = "sha256-JxFECv9jTFLAGYe6gSpdRDXqOBw4WMn410f2NyDAuo8=";
        stripLen = 1;
      })
      (self.fetchpatch2 {
        url = "https://github.com/ros2/rmw_cyclonedds/commit/fd48d5854a2b6f9278258121334d9fb97c454e34.patch";
        hash = "sha256-X21nN2hKl+wqeMkNLYg4FXrQ98plGCfJudXov8ls0P8=";
        stripLen = 1;
      })
      (self.fetchpatch2 {
        url = "https://github.com/ros2/rmw_cyclonedds/commit/e7f44399fbadb474f0136370c232ed7eaf5be581.patch";
        hash = "sha256-CzN8UuaX3l58sGVTD7qlZEkLvyqREVmq6fm9uR6dJQE=";
        stripLen = 1;
      })
      (self.fetchpatch2 {
        url = "https://github.com/ros2/rmw_cyclonedds/commit/1cf18c066e5c9cc6c4069b68c4b242155d606d2f.patch";
        hash = "sha256-g2R8/CYnDcTqQt3UwQ6V4M54JcMUjCgTDyMgvytWIng=";
        stripLen = 1;
      })
      (self.fetchpatch2 {
        url = "https://github.com/ros2/rmw_cyclonedds/commit/ceb2eca8edead7d98d30bcbab80099a92a4c5015.patch";
        hash = "sha256-yQg21wgYW3HsLb3L4fRDJxcG97BYWquYSVouDXPS3vg=";
        stripLen = 1;
      })
      # Key support (#575)
      (self.fetchpatch2 {
        url = "https://github.com/ros2/rmw_cyclonedds/commit/92f6d89676326e14e4fdd89bee047cdd8c0fbbd5.patch";
        hash = "sha256-dbWT7NVL7JXAJGWS7nBof6at7KXBOQgFbonMLy/UmH8=";
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
        url = "https://github.com/nim65s/ublox/commit/da37a9628db91aaafbcbe8b247c28c0d5863159f.patch";
        hash = "sha256-m7lsEHF/uS47zYrNBd5RSL62CmvmNcKXQiLM24R6LZA=";
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
      (self.fetchpatch {
        url = "https://github.com/ros/urdfdom/commit/229c3ae867ba770dcade50b3ee520d81ff3b0413.patch";
        hash = "sha256-cfPnSux7qmTDngzwPYIayYIvddhOXfmSsvgKwltFT5Q=";
      })
      # removed urdf_world/types.h deprecation (#251)
      # This fixes build failure in gz-dartsim-vendor
      (self.fetchpatch2 {
        url = "https://github.com/ros/urdfdom/commit/3cd0cc726f8cb42e890974b1d6f5602a87ac3ee4.patch";
        hash = "sha256-sCRShtKm4XHkrC2CeLoZiINoqjpUdVyGus/dYkJU5tI=";
      })
    ];
  });

  urdfdom-headers = rosSuper.urdfdom-headers.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix CMake relative install dir assumptions
      # https://github.com/ros/urdfdom_headers/pull/90
      (self.fetchpatch {
        url = "https://github.com/ros/urdfdom_headers/commit/90efa6072dc239f78d37288a49f24d8aee1aaad2.patch";
        hash = "sha256-3q3K+fiINvS9eUrkHS3cgnn8GuA0Nz+FvVBMpsRAcFM=";
      })
      # Cleanup declaration of ModelInterface's SharedPtrs (#99)
      # This fixes build failure in ros-rolling-sdformat-urdf-2.1.0-r1
      (self.fetchpatch2 {
        url = "https://github.com/ros/urdfdom_headers/commit/f5b665d218addb536458ff69a6adf6a4e7b716eb.patch";
        hash = "sha256-r73yJtAP1Su/MQbu+kJX8T5GV1WO5wzSRb/V9R8Blu0=";
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
        url = "https://github.com/wentasah/yasmin/commit/2445d87187c421b8eb3fc651e12cc28efaaf9867.patch";
        hash = "sha256-ufHY20rQQ4IGGOzCPYRN9OVW78qUwKMrS2paM7k0CpM=";
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

# Top level package set
self:
# Distro package set
rosSelf: rosSuper: let
  inherit (rosSelf) lib;
in with lib; {

  # TODO: Remove after https://github.com/autowarefoundation/agnocast/pull/1188
  # appears in ROS release
  agnocastlib = rosSuper.agnocastlib.overrideAttrs ({
    propagatedBuildInputs ? [], ...
  }: {
    propagatedBuildInputs = propagatedBuildInputs ++ [
      rosSelf.message-filters
    ];
  });

  autoware-trajectory = rosSuper.autoware-trajectory.overrideAttrs ({
    buildInputs ? [], postPatch ? "", ...
  }: {
    # https://github.com/autowarefoundation/autoware_core/issues/855
    buildInputs = buildInputs ++ [
      rosSelf.autoware-motion-utils
      rosSelf.autoware-pyplot
      rosSelf.autoware-test-utils
      rosSelf.pybind11-vendor
    ];
    # https://github.com/autowarefoundation/autoware_core/pull/853
    postPatch = postPatch + ''
      substituteInPlace include/autoware/trajectory/interpolator/detail/interpolator_common_interface.hpp \
        --replace-fail '#include <vector>' "#include <vector>"$'\n'"#include <algorithm>"
    '';
  });

  autoware-utils-debug = rosSuper.autoware-utils-debug.overrideAttrs({
    cmakeFlags ? [], ...
  }: {
    cmakeFlags = cmakeFlags ++ [ "-DCMAKE_CXX_FLAGS=-Wno-error=array-bounds" ];
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

  behaviortree-cpp-v3 = rosSuper.behaviortree-cpp-v3.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # Fix ...gtest-1.17.0-dev/include/gtest/internal/gtest-port.h:273:2: error: #error C++ versions less than C++17 are not supported.
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt \
        --replace-fail 'set(CMAKE_CXX_STANDARD 14)' 'set(CMAKE_CXX_STANDARD 17)'
    '';
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

  dwb-critics = rosSuper.dwb-critics.overrideAttrs({
    ...
  }: {
    NIX_CFLAGS_COMPILE = toString [ "-Wno-error=maybe-uninitialized" ];
  });

  dwb-plugins = rosSuper.dwb-plugins.overrideAttrs({
    ...
  }: {
    NIX_CFLAGS_COMPILE = toString [ "-Wno-error=maybe-uninitialized" ];
  });

  dynamic-edt-3d = rosSuper.dynamic-edt-3d.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        "CMAKE_MINIMUM_REQUIRED(VERSION 3.0.2)" \
        "CMAKE_MINIMUM_REQUIRED(VERSION 3.5)"
    '';
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

  fastrtps = rosSuper.fastrtps.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      ./fastrtps/0001-Replace-io_service-with-io_context-to-be-compatible-.patch
      ./fastrtps/0002-Add-missing-include-cstdint.patch
      ./fastrtps/0003-asio-make_address-fix.patch
      ./fastrtps/0004-Fix-asio-compatibility-with-newer-asio-versions.patch
      ./fastrtps/0005-Fix-asio-strand-post-compatibility-in-TCPChannelReso.patch
      ./fastrtps/0006-Fix-resolver.resolve-brace-init-compat-in-TCPChannel.patch
      ./fastrtps/0007-Fix-IPLocator-resolveNameDNS-for-newer-asio-resolver.patch
    ];
  });

  # This is a newer version than the build system tries to download, but this
  # version doesn't try to run host platform binaries on the build platform
  # and fixes "Allocator foonathan::memory::memory_pool received invalid size"
  # error on MacOS
  foonathan-memory-vendor = patchExternalProjectGit rosSuper.foonathan-memory-vendor {
    url = "https://github.com/foonathan/memory.git";
    originalRev = "v0.7-1";
    rev = "v0.7-3";
    fetchgitArgs.hash = "sha256-nLBnxPbPKiLCFF2TJgD/eJKJJfzktVBW3SRW2m3WK/s=";
  };

  foxglove-bridge = rosSuper.foxglove-bridge.overrideAttrs({
    postPatch ? "", cmakeFlags ? [], ...
  }: {
    postPatch = let
      # SDK version from
      # https://github.com/foxglove/foxglove-sdk/blob/main/ros/src/foxglove_bridge/CMakeLists.txt.
      # If the version doesn't match, cmake fails with "Hash mismatch"
      # and we can fix it here.
      FOXGLOVE_SDK_VERSION = "0.19.0";
      systemToPlatform = {
        "x86_64-linux" = "x86_64-unknown-linux-gnu";
        "aarch64-linux" = "aarch64-unknown-linux-gnu";
      };
      systemToHash = {
        "x86_64-linux" = "sha256-89L2qLqX/t6uE7l49eilHexIA+3f0jsZiikr+atmdf8=";
        "aarch64-linux" = "sha256-exp5EfTN9JHqbThIavb3MKs8kNTlQHGoW7iHmUQk5Rs=";
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
    cmakeFlags = cmakeFlags ++  [
      # Prevent: stl_algobase.h:452:30: error: 'void* __builtin_memmove(void*, const void*, long unsigned int)' forming offset 8 is out of the bounds [0, 8] [-Werror=array-bounds=]
      # TODO: Remove this after we move to newer libstdc++
      "-DCMAKE_CXX_FLAGS=-Wno-error=array-bounds"
    ];
  });

  gazebo = self.gazebo_11;

  gazebo-ros = rosSuper.gazebo-ros.overrideAttrs ({
    propagatedBuildInputs ? [ ], ...
  }: {
    propagatedBuildInputs = propagatedBuildInputs ++ [ self.qt5.qtbase ];
  });

  google-benchmark-vendor = lib.patchExternalProjectGit rosSuper.google-benchmark-vendor {
    url = "https://github.com/google/benchmark.git";
    rev = "c05843a9f622db08ad59804c190f98879b76beba";
    fetchgitArgs.hash = "sha256-h/e2vJacUp7PITez9HPzGc5+ofz7Oplso44VibECmsI=";
  };

  grid-map-cv = rosSuper.grid-map-cv.overrideAttrs ({
    ...
  }: {
    env.NIX_CFLAGS_COMPILE = toString [
      # Needed with GCC 12
      "-Wno-error=stringop-overflow"
      "-Wno-error=uninitialized"
      # Needed for GCC 13
      "-Wno-error=array-bounds"
    ];
  });

  grid-map-filters = rosSuper.grid-map-filters.overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [self.pkg-config];
  });

  gtest-vendor = rosSuper.gtest-vendor.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # Fix errors like:
    # "...ros-humble-gtest-vendor-1.10.9006-r1/src/gtest_vendor/./src/gtest-death-test.cc:1385:26: error: 'uintptr_t' does not name a type"
    # in packages cloudini-lib and pose-cov-ops.
    postPatch = postPatch + ''
      substituteInPlace src/gtest-death-test.cc --replace-fail \
        "#include <utility>" \
        "#include <cstdint>
        #include <utility>"
    '';
  });


  gtsam = rosSuper.gtsam.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt gtsam/3rdparty/metis/CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 3.0)" \
        "cmake_minimum_required(VERSION 3.5)"
    '';
  });

  hey5-description = rosSuper.hey5-description.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 3.4.0)" \
        "cmake_minimum_required(VERSION 3.5)"
    '';
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

  lsc-ros2-driver = rosSuper.lsc-ros2-driver.overrideAttrs ({
    patches ? [], ...
  }: {
    # https://github.com/AutonicsLiDAR/lsc_ros2_driver/pull/3
    patches = patches ++ [(self.fetchpatch2 {
      url = "https://github.com/nim65s/lsc_ros2_driver/commit/6c2c5cf64fea0099358e610a7fff40db7c0922be.patch";
      hash = "sha256-Xwlhjg1wjIiH1H3Roh0iV6HYLmWyGye/6CdvuSVWdSc=";
    })];
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
        "PATCH_COMMAND sed -i \"s|ATOMIC_VAR_INIT(0)|0|\" include/lely/util/spscring.h
        && sed -i \"s|static const char tab.64. =|static const char tab[] =|\" src/util/print.c
        CONFIGURE_COMMAND autoreconf -i <SOURCE_DIR>"
    '';
  });

  libcamera = rosSuper.libcamera.overrideAttrs ({
    patches ? [], postPatch ? "", ...
  }: {
    patches = patches ++ [
      # Fix build with Python 3.12
      (self.fetchpatch {
        url = "https://github.com/openembedded/meta-openembedded/raw/7d8115d5507bac6c018fbff8a7aa9bc513c2bc46/meta-multimedia/recipes-multimedia/libcamera/libcamera/0001-mojom-Drop-using-imp-module.patch";
        hash = "sha256-Q5tPOfbwO28Lg+bP/IINykTZC2ZL1jeWf6TGP7ZUAE8=";
      })
    ];
    postPatch = postPatch + ''
      substituteInPlace include/libcamera/base/file.h --replace-fail \
        "#include <map>" \
        "#include <cstdint>
         #include <map>"
      substituteInPlace include/libcamera/internal/yaml_parser.h --replace-fail \
        "#include <iterator>" \
        "#include <cstdint>
         #include <iterator>"
      substituteInPlace src/libcamera/media_device.cpp --replace-fail \
        "lockf(fd_.get(), F_ULOCK, 0);" \
        "std::ignore = lockf(fd_.get(), F_ULOCK, 0);"
    '';
  });

  libfranka = rosSuper.libfranka.overrideAttrs ({
    cmakeFlags ? [], postPatch ? "", ...
  }: {
    # Don't require building from git repo. This is needed only for
    # creation of .deb package.
    postPatch = ''
      substituteInPlace CMakeLists.txt \
        --replace-fail 'set_version_from_git(PACKAGE_VERSION PACKAGE_TAG)' ""
      substituteInPlace common/CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 3.0.2)" \
        "cmake_minimum_required(VERSION 3.5.0)"
    '';
    # Uses custom flag to disable tests. Attempts to download GTest without
    # this.
    cmakeFlags = cmakeFlags ++ [ "-DBUILD_TESTS=OFF" ];
  });

  libnabo = rosSuper.libnabo.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 2.6)" \
        "cmake_minimum_required(VERSION 3.5)"
    '';
  });

  libphidget22 = patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.19.20240304.tar.gz";
    hash = "sha256-GpzGMpQ02s/X/XEcGoozzMjigrbqvAu81bcb7QG+36E=";
  };

  libyaml-vendor = patchExternalProjectGit rosSuper.libyaml-vendor {
    url = "https://github.com/yaml/libyaml.git";
    rev = "2c891fc7a770e8ba2fec34fc6b545c672beb37e6";
    fetchgitArgs = {
      hash = "sha256-bqJPibk65os0nEywPVq9BP4t9GIQAMUOLRjHshDy58U=";
      postFetch = ''
        substituteInPlace $out/CMakeLists.txt \
          --replace-fail 'cmake_minimum_required(VERSION 3.0)' \
                         'cmake_minimum_required(VERSION 3.5)'
      '';
    };
  };

  mcap-vendor = (patchExternalProjectGit (patchVendorUrl rosSuper.mcap-vendor {
    url = "https://github.com/foxglove/mcap/archive/refs/tags/releases/cpp/v0.8.0.tar.gz";
    sha256 = "sha256-KDP3I0QwjqWGOfOzY6DPF2aVgK56tDX0PzsQTP9u9Ug=";
  }) {
    url = "https://github.com/lz4/lz4.git";
    rev = "d44371841a2f1728a3f36839fd4b7e872d0927d3";
    fetchgitArgs.hash = "sha256-f7GZgOzUrkAfw1mqwlIKQQqDvkvIahGlHvq6AL+aAvA=";
  }).overrideAttrs ( {
    postPatch ? "", ...
  }: {
    # ref. https://github.com/foxglove/mcap/pull/1371
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        "URL_HASH SHA1=b44637791da2c9c1cec61a3ba6994f1ef63a228c # v0.8.0" \
        "URL_HASH SHA1=b44637791da2c9c1cec61a3ba6994f1ef63a228c # v0.8.0
        PATCH_COMMAND sed -i \"1i #include <cstdint>\" cpp/mcap/include/mcap/types.hpp"
    '';
  });


  mecanum-drive-controller = rosSuper.mecanum-drive-controller.overrideAttrs ({
    buildInputs ? [], ...
  }: {
    # See also https://github.com/ros-controls/ros2_controllers/pull/1941
    buildInputs = buildInputs ++ [ rosSelf.backward-ros ];
  });

  mimick-vendor = (patchExternalProjectGit rosSuper.mimick-vendor {
    url = "https://github.com/ros2/Mimick.git";
    rev = "de11f8377eb95f932a03707b583bf3d4ce5bd3e7";
    revVariable = "mimick_version";
    fetchgitArgs.hash = "sha256-adCxIl0F3QkgSimOhvuTyhmig1rFy/K9wxZ/+YCuxYo=";
  }).overrideAttrs ({
    postPatch ? "", ...
  }: {
    NIX_CFLAGS_COMPILE = toString [ "-Wno-error=cpp" ];
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        "UPDATE_COMMAND \"\"" \
        "UPDATE_COMMAND \"\"
         PATCH_COMMAND sed -i \"s|cmake_minimum_required (VERSION 2.8.12)|cmake_minimum_required (VERSION 3.5)|\" CMakeLists.txt"
    '';
  });

  motion-capture-tracking = rosSuper.motion-capture-tracking.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace deps/libmotioncapture/deps/vrpn/CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 2.8.3)" \
        "cmake_minimum_required(VERSION 3.5)"
      substituteInPlace deps/libmotioncapture/deps/vrpn/quat/CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 2.6)" \
        "cmake_minimum_required(VERSION 3.5)"
      substituteInPlace deps/libmotioncapture/deps/vrpn/cmake/FindOpenHaptics.cmake --replace-fail \
        "cmake_minimum_required(VERSION 2.6.3)" \
        "cmake_minimum_required(VERSION 3.5)"
      substituteInPlace deps/libmotioncapture/deps/vrpn/client_src/CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 2.6)" \
        "cmake_minimum_required(VERSION 3.5)"
      substituteInPlace deps/libmotioncapture/deps/pybind11/CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 3.4)" \
        "cmake_minimum_required(VERSION 3.5)"
    '';
  });

  moveit-kinematics = rosSuper.moveit-kinematics.overrideAttrs ({
    propagatedBuildInputs ? [], ...
  }: {
    # Added upstream in 2.7.2
    # https://github.com/ros-planning/moveit2/pull/2109
    propagatedBuildInputs = propagatedBuildInputs ++ [ rosSelf.moveit-ros-planning ];
  });

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
    # fix FindTBB used in autoware-map-height-fitter
    # ref. https://github.com/KIT-MRT/mrt_cmake_modules/pull/40
    patches = patches ++ [
      (self.fetchpatch2 {
        url = "https://github.com/KIT-MRT/mrt_cmake_modules/commit/e0b17b017affcf715514c9895008dfff654c2873.patch";
        hash = "sha256-2UmmwV0OYWTYdOAQdrAlk5zmVGQn0LOVYh+IGONxrW4=";
      })
      (self.fetchpatch2 {
        url = "https://github.com/KIT-MRT/mrt_cmake_modules/commit/56bb3808fd7883c1afb216bb9b974fb4d6f16ed0.patch";
        hash = "sha256-p/TMEttj8dIdKAXvvw4P4BTyQKMKwz++CuyGAYdVqJ8=";
      })
    ];
  });

  nav2-behaviors = rosSuper.nav2-behaviors.overrideAttrs({
    ...
  }: {
    NIX_CFLAGS_COMPILE = toString [ "-Wno-error=array-bounds" "-Wno-error=maybe-uninitialized" ];
  });

  nav2-behavior-tree = rosSuper.nav2-behavior-tree.overrideAttrs({
    ...
  }: {
    NIX_CFLAGS_COMPILE = toString [ "-Wno-error=array-bounds"];
  });

  nav2-costmap-2d = rosSuper.nav2-costmap-2d.overrideAttrs({
    ...
  }: {
    NIX_CFLAGS_COMPILE = toString [ "-Wno-error=array-bounds"];
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
    ...
  }: {
    NIX_CFLAGS_COMPILE = toString [ "-Wno-error=array-bounds" ];
  });

  nav2-planner = rosSuper.nav2-planner.overrideAttrs({
    ...
  }: {
    NIX_CFLAGS_COMPILE = toString [ "-Wno-error=maybe-uninitialized" ];
  });

  nav2-smoother = rosSuper.nav2-smoother.overrideAttrs({
    ...
  }: {
    NIX_CFLAGS_COMPILE = toString [ "-Wno-error=maybe-uninitialized" ];
  });

  nav2-waypoint-follower = rosSuper.nav2-waypoint-follower.overrideAttrs({
    ...
  }: {
    NIX_CFLAGS_COMPILE = toString [ "-Wno-error=maybe-uninitialized" ];
  });

  novatel-oem7-driver = (patchExternalProjectGit rosSuper.novatel-oem7-driver {
    url = "https://github.com/novatel/novatel_edie";
    rev = "d02ccc2dfe531d642c1e2ca8a8c0f8205c856f23";
    fetchgitArgs.hash = "sha256-ZQ7z9vQ8quI+SoNhB93tTw5LQe07UAKdbJJpaMj1C6I=";
  }).overrideAttrs ({ ... }: {
    dontFixCmake = true;
  });

  octomap = rosSuper.octomap.overrideAttrs ({
    patches ? [], postPatch ? "", ...
  }: {
    patches = patches ++ [
      # fix errors with recent compilers and C++17/20 standard
      (self.fetchpatch {
        url = "https://github.com/OctoMap/octomap/commit/8178b4f28c72a8c7b84ece25bda7a59df8d14eb8.patch";
        hash = "sha256-vI3FEWJbAnDPNxG6s2pPX1UTorpokexOawY0AmDo8xY=";
        # cmdinclude/octomap/OcTreeBase.h:46:21: error: template-id not allowed for constructor in C++20 [-Werror=template-id-cdtor]
        includes = [ "include/octomap/OcTreeBase.h*" ];
        stripLen = 1;
      })
    ];
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt \
        --replace-fail 'CMAKE_MINIMUM_REQUIRED(VERSION 3.0.2)' \
                       'CMAKE_MINIMUM_REQUIRED(VERSION 3.5)'
    '';
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

  pal-gazebo-worlds = rosSuper.pal-gazebo-worlds.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 3.4.0)" \
        "cmake_minimum_required(VERSION 3.5.0)"
    '';
  });

  pangolin = rosSuper.pangolin.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace components/pango_python/pybind11/CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 3.4)" \
        "cmake_minimum_required(VERSION 3.5)"
    '';
  });

  plotjuggler = rosSuper.plotjuggler.overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ self.pkg-config ];
  });

  plotjuggler-ros = rosSuper.plotjuggler-ros.overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    # TODO: Remove after https://github.com/PlotJuggler/plotjuggler-ros-plugins/pull/107
    # appears in a release
    nativeBuildInputs = nativeBuildInputs ++ [ rosSelf.ros-environment ];
  });

  popf = (rosSuper.popf.override {
    # Fix "libfl.so.2: undefined reference to `yylex'"
    flex = self.flex_2_5_35;
  }).overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # cmake: Fix link problem, merged upstream
      (self.fetchpatch2 {
        url = "https://github.com/fmrico/popf/commit/8eabc3b0c6e4f6e718f4ac3564230dccfcfee46b.patch";
        hash = "sha256-4inVYUHGiDd677wicbRlMoBtZ5HJbJ61xSFQpBrtU7c=";
      })
      # cmake: fix missing includes, ref. https://github.com/fmrico/popf/pull/12
      (self.fetchpatch2 {
        url = "https://github.com/nim65s/popf/commit/e8ba226f67e0513689d0efc84e9b4e8b55394bd4.patch";
        hash = "sha256-Sw/rY4MsmoWIpC9VQzimM18mlvdGwb8Q6EmwY2rg0pw=";
      })
    ];
  });

  python-qt-binding = rosSuper.python-qt-binding.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = "https://github.com/ros-visualization/python_qt_binding/commit/e78372fd63eda527c9fad5fcdab8ca31eb3f36d2.patch";
        hash = "sha256-8+58ggPUJmEQIS9C4RzT4PhK1pT9ms98nppn3ZA8AEo=";
      })
      (self.fetchpatch {
        url = "https://github.com/ros-visualization/python_qt_binding/commit/ee4d43bcdb0c5c5d40f81dea3de6185298ab34a7.patch";
        hash = "sha256-+n7wqQ9jDybwxVeUEjOQSQJh7nnU8JXv5DNCoK/5Sm4=";
      })
    ];
  });

  qml6-ros2-plugin = rosSuper.qml6-ros2-plugin.overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ self.pkg-config ];
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

  robotont-driver = rosSuper.robotont-driver.overrideAttrs ({
    postPatch ? "",
    patches ? [], ...
  }: {
    patches = patches ++ [
      # fix for asio 1.36, ref. https://github.com/robotont/robotont_driver/pull/22
      (self.fetchpatch2 {
        url = "https://github.com/nim65s/robotont_driver/commit/16910c7d40c5300829d0dc113189f8a0312e8638.patch";
        hash = "sha256-M5ZcQexVU3N7zPZiybEFIP398BmWB5vpBm4kfJlq2jc=";
      })
    ];
  });

  ros2-ouster = rosSuper.ros2-ouster.overrideAttrs ({
    buildInputs ? [], ...
  }: {
    buildInputs = buildInputs ++ [ self.jsoncpp self.libpcap ];
  });

  persist-parameter-server = rosSuper.persist-parameter-server.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Add ROS Humble compatibility for parameter callbacks
      # https://github.com/fujitatomoya/ros2_persist_parameter_server/pull/91
      (self.fetchpatch2 {
        url = "https://github.com/wentasah/ros2_persist_parameter_server/commit/9ff4569fc1b6f5f8fa1f99b5520161865ec243c9.patch";
        hash = "sha256-lSdu8MLNisnKIwO6h18dW+aikmzK1xd35oa9D/ZtOpY=";
      })
    ];
  });

  ros2-medkit-linux-introspection = rosSuper.ros2-medkit-linux-introspection.overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ self.pkg-config ];
  });

  rosidl-generator-py = rosSuper.rosidl-generator-py.overrideAttrs ({
    postPatch ? "", ...
  }: let
    python = rosSelf.python;
  in {
    # Fix finding NumPy headers
    postPatch = postPatch + ''
      substituteInPlace cmake/rosidl_generator_py_generate_interfaces.cmake \
       --replace-fail '"import numpy"' "" \
       --replace-fail 'numpy.get_include()' "'${python.pkgs.numpy}/${python.sitePackages}/numpy/_core/include'"
    '';
  });

  rot-conv = rosSuper.rot-conv.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 3.3)" \
        "cmake_minimum_required(VERSION 3.5)"
    '';
  });

  rviz-ogre-vendor = (patchVendorUrl rosSuper.rviz-ogre-vendor {
    url = "https://github.com/OGRECave/ogre/archive/v1.12.1.zip";
    sha256 = "1iv6k0dwdzg5nnzw2mcgcl663q4f7p2kj7nhs8afnsikrzxxgsi4";
  }).overrideAttrs ({ postPatch ? "", ... }: {
    # Prevent replacing $out/opt/.. with $out/var/empty/..
    dontFixCmake = true;
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt \
        --replace-fail 'PATCH_COMMAND' 'PATCH_COMMAND'$'\n'"sed -i -e \"s|cmake_minimum_required(VERSION 3.3.0)|cmake_minimum_required(VERSION 3.5.0)|\" CMakeLists.txt &&"
    '';
  });

  sick-safevisionary-base = rosSuper.sick-safevisionary-base.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        "cmake_minimum_required(VERSION 3.0.2)" \
        "cmake_minimum_required(VERSION 3.5)"
    '';
  });

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

  shared-queues-vendor = patchVendorUrl (patchVendorUrl rosSuper.shared-queues-vendor {
    url = "https://github.com/cameron314/concurrentqueue/archive/8f65a8734d77c3cc00d74c0532efca872931d3ce.zip";
    sha256 = "0cmsmgc87ndd9hiv187xkvjkn8fipn3hsijjc864h2lfcyigbxq1";
  }) {
    url = "https://github.com/cameron314/readerwriterqueue/archive/ef7dfbf553288064347d51b8ac335f1ca489032a.zip";
    sha256 = "1255n51y1bjry97n4w60mgz6b9h14flfrxb01ihjf6pwvvfns8ag";
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
        url = "https://github.com/ros/urdfdom/commit/cbe6884d267779463bb444be851f6404e692cc0a.patch";
        hash = "sha256-1gTRKIGqiSRion76bGecSfFJSBskYUJguUIa6ePIiX4=";
      })
      # fix: missing header
      (self.fetchpatch2 {
        url = "https://github.com/ros/urdfdom/commit/4768260074a90510571810d7439113960a304d44.patch";
        hash = "sha256-bl49jkxvHMtNWPSnc0T3MHonAGSFVJhjhJc8ApaOdSo=";
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
        url = "https://github.com/ros/urdfdom_headers/commit/c9c993147bbf18d5ec83bae684c5780281e529b4.patch";
        hash = "sha256-BnYPdcetYSim2O1R38N0d1tY0Id++AgKNic8+dlM6Vg=";
      })
      # Update cmake_minimum_required
      (self.fetchpatch2 {
        url = "https://github.com/ros/urdfdom_headers/commit/aedc2f08310e74d00c5eadefd07461fa52890fbb.patch";
        hash = "sha256-ieeHfnxSmyuBnT5376s1cbO+Qin4Ay8fUiTUIGXwo9c=";
      })
    ];
  });

  usb-cam = rosSuper.usb-cam.overrideAttrs ({
    nativeBuildInputs ? [],
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Remove undocumented pix_fmt (AV_PIX_FMT_XVMC) breaking the build
      (self.fetchpatch {
        url = "https://github.com/ros-drivers/usb_cam/commit/1d1970b1a88fb1be3b961073748879900d2b1a70.patch";
        hash = "sha256-0iWl2DtqdjkyFy7lKa7aLxXjynm4ggNEQLxB45Mqf/Y=";
      })
      # fix for newer ffmpeg, ref https://github.com/ros-drivers/usb_cam/pull/342, merged upstream
      (self.fetchpatch2 {
        url = "https://github.com/ros-drivers/usb_cam/commit/9c7e4dad36f7ddc20c207aa2e4d1512a5188a60a.patch";
        hash = "sha256-sSM7J35wKA8Z4GzXe5YL5Rw1I1jks4efTaCFDNqdKFQ=";
      })
    ];

    nativeBuildInputs = nativeBuildInputs ++ [ self.pkg-config ];
  });

  vrpn = rosSuper.vrpn.overrideAttrs ({
    patches ? [], postPatch ? "", ...
  }: {
    patches = patches ++ [
      # Fix compatibility with recent CMake versions
      (self.fetchpatch {
        url = "https://github.com/vrpn/vrpn/commit/04d86b71de06cb6cb8d2cb7276fef27275d083d2.patch";
        hash = "sha256-AEiTLXPYcFdZrE4KzvCkXH4GiSFmhCl14wkq+0MRWLo=";
      })
    ];
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
        --replace-fail 'find_package(Python 3.10 EXACT' 'find_package(Python 3.10'
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
    patchesFor.zmqpp_vendor = [ ./zmqpp-vendor/cmake-version.patch ];
  };
}

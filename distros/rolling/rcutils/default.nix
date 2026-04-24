
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, mimick-vendor, osrf-testing-tools-cpp, performance-test-fixture }:
buildRosPackage {
  pname = "ros-rolling-rcutils";
  version = "7.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcutils-release/archive/release/rolling/rcutils/7.1.1-1.tar.gz";
    name = "7.1.1-1.tar.gz";
    sha256 = "853d00b26f8e529d7a5aaddc0cb9c51f3b279aafe9e57234799a3c6196ad76ff";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake mimick-vendor osrf-testing-tools-cpp performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake-ros-core ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Package containing various utility types and functions for C";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, mimick-vendor, osrf-testing-tools-cpp, performance-test-fixture }:
buildRosPackage {
  pname = "ros-lyrical-rcutils";
  version = "7.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcutils-release/archive/release/lyrical/rcutils/7.1.1-3.tar.gz";
    name = "7.1.1-3.tar.gz";
    sha256 = "090f9fd00f13ee74adbeb164aec61e6d5c6c5212fe5925054da69d504c4fb734";
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

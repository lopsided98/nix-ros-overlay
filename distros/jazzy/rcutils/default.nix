
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, mimick-vendor, osrf-testing-tools-cpp, performance-test-fixture, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-rcutils";
  version = "6.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcutils-release/archive/release/jazzy/rcutils/6.7.5-1.tar.gz";
    name = "6.7.5-1.tar.gz";
    sha256 = "338d1fffe324f682f755250653af11bb2ac1bc936e5b4fc7a3c204f1020d5c1d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros python3Packages.empy ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake mimick-vendor osrf-testing-tools-cpp performance-test-fixture ];
  nativeBuildInputs = [ ament-cmake-ros python3Packages.empy ];

  meta = {
    description = "Package containing various utility types and functions for C";
    license = with lib.licenses; [ asl20 ];
  };
}

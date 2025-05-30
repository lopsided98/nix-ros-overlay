
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, mimick-vendor, osrf-testing-tools-cpp, performance-test-fixture, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-rcutils";
  version = "6.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcutils-release/archive/release/rolling/rcutils/6.10.0-1.tar.gz";
    name = "6.10.0-1.tar.gz";
    sha256 = "dcb9d2af41a4bb0dcf39cb1c91a5ccee5816b451e8f1b86b0e87017475cde7fa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core python3Packages.empy ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake mimick-vendor osrf-testing-tools-cpp performance-test-fixture ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core python3Packages.empy ];

  meta = {
    description = "Package containing various utility types and functions for C";
    license = with lib.licenses; [ asl20 ];
  };
}

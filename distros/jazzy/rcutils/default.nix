
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, mimick-vendor, osrf-testing-tools-cpp, performance-test-fixture, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-rcutils";
  version = "6.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcutils-release/archive/release/jazzy/rcutils/6.7.1-1.tar.gz";
    name = "6.7.1-1.tar.gz";
    sha256 = "d9e1efd2bc40f805726f88c3d2534d72c42a4e70938b0e43db43674de305879f";
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

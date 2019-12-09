
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-cmake-ros, launch, launch-testing, ament-lint-common, ament-lint-auto, launch-testing-ament-cmake, osrf-testing-tools-cpp, ament-cmake-pytest, ament-cmake-gmock, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-eloquent-rcutils";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcutils-release/archive/release/eloquent/rcutils/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "f053d0b5a3004bd4f9d40fa6332b298500dfde9729bdfe41f884d82e3228c4ef";
  };

  buildType = "ament_cmake";
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest launch-testing-ament-cmake osrf-testing-tools-cpp ament-cmake-pytest ament-cmake-gmock ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake-ros python3Packages.empy ];

  meta = {
    description = ''Package containing various utility types and functions for C'';
    license = with lib.licenses; [ asl20 ];
  };
}

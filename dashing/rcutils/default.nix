
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-cmake-ros, launch, launch-testing, ament-lint-common, ament-lint-auto, launch-testing-ament-cmake, osrf-testing-tools-cpp, ament-cmake-pytest, ament-cmake-gmock, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-rcutils";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcutils-release/archive/release/dashing/rcutils/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "b04e61c7bffe569c664473c320a61e7e6db97e715d83295332fa101daae76c06";
  };

  buildType = "ament_cmake";
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest launch-testing-ament-cmake osrf-testing-tools-cpp ament-cmake-pytest ament-cmake-gmock ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake-ros python3Packages.empy ];

  meta = {
    description = ''Package containing various utility types and functions for C'';
    license = with lib.licenses; [ asl20 ];
  };
}

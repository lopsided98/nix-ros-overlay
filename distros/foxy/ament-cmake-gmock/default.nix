
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-cmake-test, gmock, gmock-vendor }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-gmock";
  version = "0.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_gmock/0.9.7-1.tar.gz";
    name = "0.9.7-1.tar.gz";
    sha256 = "8df86d44e4817694808d83d36e20876c597720271d3700fc8d822aa881e5f152";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-gtest ament-cmake-test gmock gmock-vendor ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add Google mock-based tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}

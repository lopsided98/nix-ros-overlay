
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, rcutils, rmw, rmw-dds-common, rmw-implementation, rmw-implementation-cmake, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-test-rmw-implementation";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_implementation-release/archive/release/foxy/test_rmw_implementation/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "5f92130b441af78cb91c0b78673f070f81ff2c0de2be8a4035437ffe0ef83573";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp rcutils rmw rmw-dds-common rmw-implementation rmw-implementation-cmake test-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Test suite for ROS middleware API.'';
    license = with lib.licenses; [ asl20 ];
  };
}

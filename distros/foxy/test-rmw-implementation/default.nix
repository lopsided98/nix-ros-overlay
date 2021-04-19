
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, rcutils, rmw, rmw-dds-common, rmw-implementation, rmw-implementation-cmake, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-test-rmw-implementation";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_implementation-release/archive/release/foxy/test_rmw_implementation/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "ac1267ff6e3b4dbc7796d45cd3cb4ba22417e5ea97ca33acb6c3dc09baef66e6";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp rcutils rmw rmw-dds-common rmw-implementation rmw-implementation-cmake test-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Test suite for ROS middleware API.'';
    license = with lib.licenses; [ asl20 ];
  };
}

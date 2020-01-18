
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch, osrf-testing-tools-cpp, rcl-interfaces, rcl-logging-noop, rcutils, rmw, rmw-implementation, rmw-implementation-cmake, rosidl-default-runtime, rosidl-generator-c, test-msgs }:
buildRosPackage {
  pname = "ros-crystal-rcl";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/crystal/rcl/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "e98f83aac311ace0a9b1d83d7f1a03765410e68f6281f74c080765133f4cb8cd";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch osrf-testing-tools-cpp rmw rmw-implementation-cmake test-msgs ];
  propagatedBuildInputs = [ ament-cmake rcl-interfaces rcl-logging-noop rcutils rmw rmw-implementation rosidl-default-runtime rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library common implementation.
    This package contains an API which builds on the ROS middleware API and is optionally built upon by the other ROS client libraries.'';
    license = with lib.licenses; [ asl20 ];
  };
}

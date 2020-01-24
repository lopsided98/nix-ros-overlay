
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, builtin-interfaces, rcl, rcl-interfaces, rcl-yaml-param-parser, rcpputils, rmw, rmw-implementation, rmw-implementation-cmake, rosgraph-msgs, rosidl-generator-cpp, rosidl-typesupport-c, rosidl-typesupport-cpp, test-msgs, tracetools }:
buildRosPackage {
  pname = "ros-eloquent-rclcpp";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/eloquent/rclcpp/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "e3d2d02a648e2bef5a8d1900febfbb624c30d4a4708e3a7e195da4ef7c93287f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common rmw rmw-implementation-cmake test-msgs ];
  propagatedBuildInputs = [ ament-cmake builtin-interfaces rcl rcl-interfaces rcl-yaml-param-parser rcpputils rmw rmw-implementation rosgraph-msgs rosidl-generator-cpp rosidl-typesupport-c rosidl-typesupport-cpp tracetools ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}

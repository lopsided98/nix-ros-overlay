
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, builtin-interfaces, rcl, rcl-interfaces, rcl-yaml-param-parser, rmw, rmw-implementation, rmw-implementation-cmake, rosgraph-msgs, rosidl-generator-cpp, rosidl-typesupport-c, rosidl-typesupport-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-crystal-rclcpp";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/crystal/rclcpp/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "1a86339deaa90b5b5c114811d162039993ed98d7967936a35cb08549f815931b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common rmw rmw-implementation-cmake test-msgs ];
  propagatedBuildInputs = [ ament-cmake builtin-interfaces rcl rcl-interfaces rcl-yaml-param-parser rmw rmw-implementation rosgraph-msgs rosidl-generator-cpp rosidl-typesupport-c rosidl-typesupport-cpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}

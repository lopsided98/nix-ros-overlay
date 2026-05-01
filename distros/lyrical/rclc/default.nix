
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, example-interfaces, launch-testing, osrf-testing-tools-cpp, rcl, rcl-action, rclcpp, rclcpp-action, rcutils, rosidl-generator-c, rosidl-typesupport-c, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rclc";
  version = "6.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/lyrical/rclc/6.3.0-3.tar.gz";
    name = "6.3.0-3.tar.gz";
    sha256 = "47e6412c752335b4084bda8dde3ba8f699be34751bc37d866cfd3ba58a666902";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-typesupport-c ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common example-interfaces launch-testing osrf-testing-tools-cpp rclcpp rclcpp-action std-msgs test-msgs ];
  propagatedBuildInputs = [ rcl rcl-action rcutils rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "The ROS client library in C.";
    license = with lib.licenses; [ asl20 ];
  };
}

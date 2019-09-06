
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake-pytest, rclpy, ament-cmake-gtest, sensor-msgs, python-cmake-module, std-msgs, rclcpp, ament-cmake-ros, ament-cmake-python, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-message-filters";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_message_filters-release/archive/release/dashing/message_filters/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "53ebd19fcd37731c28833d0c11f6aea1f4b00baecd246044afbf3b05f7d799a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclpy rclcpp builtin-interfaces ];
  checkInputs = [ ament-cmake-pytest ament-cmake-gtest sensor-msgs std-msgs ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake-python python-cmake-module ament-cmake-ros ];

  meta = {
    description = ''A set of ROS2 message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

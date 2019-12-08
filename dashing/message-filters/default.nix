
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake-pytest, rclpy, ament-cmake-gtest, sensor-msgs, python-cmake-module, std-msgs, rclcpp, ament-cmake-ros, ament-cmake-python, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-message-filters";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_message_filters-release/archive/release/dashing/message_filters/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "0d19c30447f72c1c61abbba87a8b8ebe799a11b105098977df7b30bbe9ead120";
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

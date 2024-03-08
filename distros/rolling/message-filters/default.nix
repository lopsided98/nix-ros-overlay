
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-lint-auto, builtin-interfaces, python-cmake-module, rclcpp, rclcpp-lifecycle, rclpy, rcutils, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-message-filters";
  version = "4.11.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_message_filters-release/archive/release/rolling/message_filters/4.11.0-2.tar.gz";
    name = "4.11.0-2.tar.gz";
    sha256 = "b8b22a05f8185e31bac8ffdc2f40612dd403b80a07279d49fa671775fb419e40";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto rclcpp-lifecycle sensor-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rclcpp rclpy rcutils std-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];

  meta = {
    description = ''A set of ROS 2 message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

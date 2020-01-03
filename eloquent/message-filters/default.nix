
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-lint-auto, builtin-interfaces, python-cmake-module, rclcpp, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-message-filters";
  version = "3.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_message_filters-release/archive/release/eloquent/message_filters/3.2.3-1.tar.gz";
    name = "3.2.3-1.tar.gz";
    sha256 = "82dd509ae0e93b0b61a42ebcc92b15850e713d951db416f51c4f475d1f7890c0";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces rclcpp rclpy ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];

  meta = {
    description = ''A set of ROS2 message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

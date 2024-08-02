
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-lint-auto, builtin-interfaces, python-cmake-module, rclcpp, rclcpp-lifecycle, rclpy, rcutils, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-message-filters";
  version = "4.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_message_filters-release/archive/release/iron/message_filters/4.7.1-1.tar.gz";
    name = "4.7.1-1.tar.gz";
    sha256 = "b06a44fed7bbf3381371bf82d965751999a6762c5a501f901e3c9ee4e385b95d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto rclcpp-lifecycle sensor-msgs std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rclcpp rclpy rcutils ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];

  meta = {
    description = "A set of ROS2 message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

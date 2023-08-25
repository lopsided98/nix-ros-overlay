
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-lint-auto, builtin-interfaces, python-cmake-module, rclcpp, rclcpp-lifecycle, rclpy, rcutils, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-message-filters";
  version = "4.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_message_filters-release/archive/release/rolling/message_filters/4.10.0-1.tar.gz";
    name = "4.10.0-1.tar.gz";
    sha256 = "caf28a68d219b3271c0216e3fcdabc226558c4427f70ca9936d0b287b80f853f";
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

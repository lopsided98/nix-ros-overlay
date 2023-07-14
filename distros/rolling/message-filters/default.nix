
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-lint-auto, builtin-interfaces, python-cmake-module, rclcpp, rclcpp-lifecycle, rclpy, rcutils, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-message-filters";
  version = "4.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_message_filters-release/archive/release/rolling/message_filters/4.9.1-1.tar.gz";
    name = "4.9.1-1.tar.gz";
    sha256 = "1c7a08a778030058543b838cf32854f96d5eb52cff135682f146709e21a66739";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto rclcpp-lifecycle sensor-msgs std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rclcpp rclpy rcutils ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];

  meta = {
    description = ''A set of ROS 2 message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

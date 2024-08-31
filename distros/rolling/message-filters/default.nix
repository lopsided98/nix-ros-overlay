
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, builtin-interfaces, python-cmake-module, rclcpp, rclcpp-lifecycle, rclpy, rcutils, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-message-filters";
  version = "6.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_message_filters-release/archive/release/rolling/message_filters/6.0.4-1.tar.gz";
    name = "6.0.4-1.tar.gz";
    sha256 = "fd048ca2c208d2049ff2bbf5394b15a79781d5bddb927551119fa43a8f7556a2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common rclcpp-lifecycle sensor-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rclcpp rclpy rcutils std-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];

  meta = {
    description = "A set of ROS 2 message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

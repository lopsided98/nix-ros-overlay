
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ament-cmake-ros, rclcpp, std-msgs, rclpy, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, builtin-interfaces, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-message-filters";
  version = "3.0.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_message_filters-release/archive/release/crystal/message_filters/3.0.0-0.tar.gz";
    name = "3.0.0-0.tar.gz";
    sha256 = "8fe2f16068afc46bdb688496deda0717a80a87a0ec6730f1c6361c9176f63f9e";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp builtin-interfaces rclpy ];
  checkInputs = [ sensor-msgs std-msgs ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake-ros ament-cmake-python ];

  meta = {
    description = ''A set of ROS2 message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

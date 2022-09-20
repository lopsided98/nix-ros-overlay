
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-lint-auto, builtin-interfaces, python-cmake-module, rclcpp, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-message-filters";
  version = "3.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_message_filters-release/archive/release/foxy/message_filters/3.2.5-1.tar.gz";
    name = "3.2.5-1.tar.gz";
    sha256 = "35cb4cafbb194b82e153f64d35deb278852b396bce21b3f116fa02176cb7cbe0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros builtin-interfaces python-cmake-module rclcpp rclpy ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];

  meta = {
    description = ''A set of ROS2 message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

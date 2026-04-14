
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, builtin-interfaces, rclcpp, rclcpp-lifecycle, rclpy, rcutils, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-message-filters";
  version = "7.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_message_filters-release/archive/release/kilted/message_filters/7.1.8-1.tar.gz";
    name = "7.1.8-1.tar.gz";
    sha256 = "2b10c4f244bad8ce14deb7a51e6e59de55217aeb4c0b9ca69f078a2603058a79";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common rclcpp-lifecycle sensor-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rclcpp rclpy rcutils std-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ];

  meta = {
    description = "A set of ROS 2 message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

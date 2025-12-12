
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, example-interfaces, python3Packages, rclcpp, rclcpp-action, rclpy, ros-environment, std-msgs, yasmin }:
buildRosPackage {
  pname = "ros-kilted-yasmin-ros";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/kilted/yasmin_ros/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "79e02c0fcf516bac8f54179d5e651bafcba8489b2e7e7b6d01decdc643036309";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest example-interfaces python3Packages.pytest python3Packages.pytestcov std-msgs ];
  propagatedBuildInputs = [ rclcpp rclcpp-action rclpy yasmin ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "YASMIN (Yet Another State MachINe) for ROS 2";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclcpp, rclcpp-action, rclpy, ros-environment, yasmin }:
buildRosPackage {
  pname = "ros-kilted-yasmin-ros";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/kilted/yasmin_ros/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "2a2ce4fc3c45516a88ffc75d639dc6d82df2d32e6b8eaff4d04ab360f5e98b8e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ros-environment ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest python3Packages.pytestcov ];
  propagatedBuildInputs = [ rclcpp rclcpp-action rclpy yasmin ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "YASMIN (Yet Another State MachINe) for ROS 2";
    license = with lib.licenses; [ gpl3 ];
  };
}

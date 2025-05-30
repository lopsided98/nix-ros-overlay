
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclcpp, rclcpp-action, rclpy, ros-environment, yasmin }:
buildRosPackage {
  pname = "ros-kilted-yasmin-ros";
  version = "3.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/kilted/yasmin_ros/3.2.0-2.tar.gz";
    name = "3.2.0-2.tar.gz";
    sha256 = "cacf232d51f70c8afa0f4f19207565ee99089b8783edb901cc5b481205e88ab3";
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

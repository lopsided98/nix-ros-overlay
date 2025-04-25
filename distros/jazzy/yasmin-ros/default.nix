
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclcpp, rclcpp-action, rclpy, ros-environment, yasmin }:
buildRosPackage {
  pname = "ros-jazzy-yasmin-ros";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/jazzy/yasmin_ros/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "b43892deaf809a3cf2da7217021097aa1bf313c3c94da314a17ee86455e407c6";
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

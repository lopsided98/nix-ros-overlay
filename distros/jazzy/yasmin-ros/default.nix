
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclcpp, rclcpp-action, rclpy, ros-environment, yasmin }:
buildRosPackage {
  pname = "ros-jazzy-yasmin-ros";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/jazzy/yasmin_ros/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "814704c0313e9aadc51c64453fd0977a437de7aca304960b1e1b77c2f478e58d";
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


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclcpp, rclcpp-action, rclpy, ros-environment, yasmin }:
buildRosPackage {
  pname = "ros-humble-yasmin-ros";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin_ros/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "51e024b17ced206921b068d3412606b1e34ab0a956c96f2a5d30516172ca85f5";
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

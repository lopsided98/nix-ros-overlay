
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, controller-manager, controller-manager-msgs, rclpy, ros2cli, ros2node, ros2param, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-galactic-ros2controlcli";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/galactic/ros2controlcli/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "3e75ae6da2f26e25c715471c983797aeff3fd941e2e61f938dbe96658592169b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ controller-manager controller-manager-msgs rclpy ros2cli ros2node ros2param rosidl-runtime-py ];

  meta = {
    description = ''The ROS 2 command line tools for ROS2 Control.'';
    license = with lib.licenses; [ asl20 ];
  };
}

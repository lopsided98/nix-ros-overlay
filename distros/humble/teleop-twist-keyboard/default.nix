
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-humble-teleop-twist-keyboard";
  version = "2.3.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_keyboard-release/archive/release/humble/teleop_twist_keyboard/2.3.2-4.tar.gz";
    name = "2.3.2-4.tar.gz";
    sha256 = "74c1b9d9105826029bf614c66abd1414ec1f7b87697c5d97e286e0740123718a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ];
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = ''A robot-agnostic teleoperation node to convert keyboard commands to Twist
    messages.'';
    license = with lib.licenses; [ "BSD-License-2.0" ];
  };
}

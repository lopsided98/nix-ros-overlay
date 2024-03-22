
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-iron-teleop-twist-keyboard";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_keyboard-release/archive/release/iron/teleop_twist_keyboard/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "a7f6f21fdc75e28c13bf34aa7c635fbbf78a11277175cb98aeea4e9195c7507c";
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

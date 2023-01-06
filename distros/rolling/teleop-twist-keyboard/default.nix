
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-rolling-teleop-twist-keyboard";
  version = "2.3.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_keyboard-release/archive/release/rolling/teleop_twist_keyboard/2.3.2-3.tar.gz";
    name = "2.3.2-3.tar.gz";
    sha256 = "0bd1ab987fa15fde4a131f248bb78bb2790a42ae135ee5e05947bc9cb80fcb3d";
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

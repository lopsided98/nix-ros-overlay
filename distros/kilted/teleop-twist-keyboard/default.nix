
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-kilted-teleop-twist-keyboard";
  version = "2.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_keyboard-release/archive/release/kilted/teleop_twist_keyboard/2.4.0-2.tar.gz";
    name = "2.4.0-2.tar.gz";
    sha256 = "4dda0692a4177c1bbea054c2c6f71accfb96e9d1bd004f1caafda4398ab487a7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ];
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = "A robot-agnostic teleoperation node to convert keyboard commands to Twist
    messages.";
    license = with lib.licenses; [ "BSD-License-2.0" ];
  };
}

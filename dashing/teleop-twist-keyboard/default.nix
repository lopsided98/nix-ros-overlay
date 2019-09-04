
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, rclpy, ament-pep257, ament-copyright, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-teleop-twist-keyboard";
  version = "2.3.0-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/teleop_twist_keyboard-release/archive/release/dashing/teleop_twist_keyboard/2.3.0-1.tar.gz;
    sha256 = "8b63ac05d8440d669fabe3c8414d41277d64b69287d1385e96d32e180820058a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ];
  propagatedBuildInputs = [ rclpy geometry-msgs ];

  meta = {
    description = ''A robot-agnostic teleoperation node to convert keyboard commands to Twist
    messages.'';
    license = with lib.licenses; [ bsd2 ];
  };
}

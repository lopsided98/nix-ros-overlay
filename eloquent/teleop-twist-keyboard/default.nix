
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-eloquent-teleop-twist-keyboard";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_keyboard-release/archive/release/eloquent/teleop_twist_keyboard/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "6d9bf888cc4e1a9d042447a54df75d6d7c9bd907d69709ad2c48d853695f7934";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ];
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = ''A robot-agnostic teleoperation node to convert keyboard commands to Twist
    messages.'';
    license = with lib.licenses; [ bsd2 ];
  };
}

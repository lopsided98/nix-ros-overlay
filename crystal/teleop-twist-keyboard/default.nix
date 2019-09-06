
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, rclpy, ament-pep257, ament-copyright, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-teleop-twist-keyboard";
  version = "2.2.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/teleop_twist_keyboard-release/archive/release/crystal/teleop_twist_keyboard/2.2.0-0.tar.gz;
    sha256 = "2b900f9b7189e874bb2d13b56426e6d1c2c6d632e92e69890b1aa32bd9d04ddb";
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

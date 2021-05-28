
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-galactic-teleop-twist-keyboard";
  version = "2.3.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_keyboard-release/archive/release/galactic/teleop_twist_keyboard/2.3.2-3.tar.gz";
    name = "2.3.2-3.tar.gz";
    sha256 = "1ae7e01c250295a7e8bd8b9b1d1202b366345f87e6a9a5bee03be0d775d58c02";
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

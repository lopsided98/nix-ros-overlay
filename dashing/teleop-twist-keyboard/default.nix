
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ament-copyright, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-dashing-teleop-twist-keyboard";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_keyboard-release/archive/release/dashing/teleop_twist_keyboard/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "37f237ea42f3b44929634a80dc13ceb93bd6e27931f5ff3972cd54c37b034fb5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-pep257 ament-flake8 ament-copyright ];
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = ''A robot-agnostic teleoperation node to convert keyboard commands to Twist
    messages.'';
    license = with lib.licenses; [ bsd2 ];
  };
}

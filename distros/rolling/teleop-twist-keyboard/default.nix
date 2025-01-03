
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-rolling-teleop-twist-keyboard";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_keyboard-release/archive/release/rolling/teleop_twist_keyboard/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "02d839a641a931d8428ff82970b408a5e0112f3bbe38872f91cbcc4978c3421b";
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

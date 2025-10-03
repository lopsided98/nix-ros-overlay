
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, python3Packages, rcl-interfaces, rclpy }:
buildRosPackage {
  pname = "ros-kilted-teleop-twist-keyboard";
  version = "2.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_keyboard-release/archive/release/kilted/teleop_twist_keyboard/2.4.1-1.tar.gz";
    name = "2.4.1-1.tar.gz";
    sha256 = "77810aeee48d4c4961aa609509cf081ae7e9d4f023d04f268f5ae41896afdc7a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rcl-interfaces rclpy ];

  meta = {
    description = "A robot-agnostic teleoperation node to convert keyboard commands to Twist
    messages.";
    license = with lib.licenses; [ "BSD-License-2.0" ];
  };
}

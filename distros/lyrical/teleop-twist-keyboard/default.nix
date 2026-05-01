
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, python3Packages, rcl-interfaces, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-teleop-twist-keyboard";
  version = "2.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_keyboard-release/archive/release/lyrical/teleop_twist_keyboard/2.4.1-3.tar.gz";
    name = "2.4.1-3.tar.gz";
    sha256 = "70db74a9b819f974b1d9396f3e39b8c70c258e941aa43a0bfe9902b33cb765e7";
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

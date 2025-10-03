
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, python3Packages, rcl-interfaces, rclpy }:
buildRosPackage {
  pname = "ros-humble-teleop-twist-keyboard";
  version = "2.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_keyboard-release/archive/release/humble/teleop_twist_keyboard/2.4.1-1.tar.gz";
    name = "2.4.1-1.tar.gz";
    sha256 = "609638e8144fa6d788bca38965bf7acf9ecefafbb1939431a24e71ae9098a2e6";
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

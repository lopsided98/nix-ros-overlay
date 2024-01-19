
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, rclpy }:
buildRosPackage {
  pname = "ros-rolling-teleop-twist-keyboard";
  version = "2.3.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_twist_keyboard-release/archive/release/rolling/teleop_twist_keyboard/2.3.2-4.tar.gz";
    name = "2.3.2-4.tar.gz";
    sha256 = "3e6d80ba6f38823c44b2b94cae32fb09640e0f9945733a47fb26862f5df7375f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ];
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = ''A robot-agnostic teleoperation node to convert keyboard commands to Twist
    messages.'';
    license = with lib.licenses; [ "BSD-License-2.0" ];
  };
}

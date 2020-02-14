
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, control-msgs, rclpy, sensor-msgs, teleop-tools-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-dashing-joy-teleop";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/dashing/joy_teleop/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "ae20e98e28091af8ad97150e4b84f1626195f0b30ef97ada9244294be390d5e6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ control-msgs rclpy sensor-msgs teleop-tools-msgs trajectory-msgs ];

  meta = {
    description = ''A (to be) generic joystick interface to control a robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

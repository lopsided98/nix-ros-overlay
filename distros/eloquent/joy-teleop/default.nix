
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, control-msgs, rclpy, sensor-msgs, teleop-tools-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-eloquent-joy-teleop";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/eloquent/joy_teleop/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "cdb70b1192941ad725b94f8c1f2fd87eed5c6a322930cf7ad236804df87391ed";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ control-msgs rclpy sensor-msgs teleop-tools-msgs trajectory-msgs ];

  meta = {
    description = ''A (to be) generic joystick interface to control a robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

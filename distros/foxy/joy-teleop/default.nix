
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, control-msgs, example-interfaces, geometry-msgs, rclpy, sensor-msgs, std-msgs, std-srvs, teleop-tools-msgs, test-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-foxy-joy-teleop";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/foxy/joy_teleop/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "7977507e651dad77569a0d1ccec5cfdf2dd1443aaeab8c809335b1daf1aa9b77";
  };

  buildType = "ament_python";
  checkInputs = [ action-tutorials-interfaces ament-copyright ament-flake8 ament-pep257 ament-xmllint example-interfaces geometry-msgs std-msgs std-srvs test-msgs ];
  propagatedBuildInputs = [ control-msgs rclpy sensor-msgs teleop-tools-msgs trajectory-msgs ];

  meta = {
    description = ''A (to be) generic joystick interface to control a robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

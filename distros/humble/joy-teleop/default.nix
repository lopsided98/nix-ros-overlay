
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, control-msgs, example-interfaces, geometry-msgs, rclpy, sensor-msgs, std-msgs, std-srvs, teleop-tools-msgs, test-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-joy-teleop";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/humble/joy_teleop/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "83df2e46a7baaf69f50ef7e47a6d51306b8eab7f4953fe1bcd1281b4309dcfed";
  };

  buildType = "ament_python";
  checkInputs = [ action-tutorials-interfaces ament-copyright ament-flake8 ament-pep257 ament-xmllint example-interfaces geometry-msgs std-msgs std-srvs test-msgs ];
  propagatedBuildInputs = [ control-msgs rclpy sensor-msgs teleop-tools-msgs trajectory-msgs ];

  meta = {
    description = ''A (to be) generic joystick interface to control a robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

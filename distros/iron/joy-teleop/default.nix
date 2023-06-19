
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, control-msgs, example-interfaces, geometry-msgs, launch-ros, launch-testing, rclpy, rosidl-runtime-py, sensor-msgs, std-msgs, std-srvs, teleop-tools-msgs, test-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-iron-joy-teleop";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/iron/joy_teleop/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "20b1f410f353276635576cbf190878778921d9dee21b4a9288f77d8c87c8370b";
  };

  buildType = "ament_python";
  checkInputs = [ action-tutorials-interfaces ament-copyright ament-flake8 ament-pep257 ament-xmllint example-interfaces geometry-msgs launch-ros launch-testing std-msgs std-srvs test-msgs ];
  propagatedBuildInputs = [ control-msgs rclpy rosidl-runtime-py sensor-msgs teleop-tools-msgs trajectory-msgs ];

  meta = {
    description = ''A (to be) generic joystick interface to control a robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

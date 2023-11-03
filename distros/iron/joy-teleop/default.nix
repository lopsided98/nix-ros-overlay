
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, control-msgs, example-interfaces, geometry-msgs, launch-ros, launch-testing, rclpy, rosidl-runtime-py, sensor-msgs, std-msgs, std-srvs, teleop-tools-msgs, test-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-iron-joy-teleop";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/iron/joy_teleop/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "165a99da695f1a8e81484fb2ef8f5f106f5b7ff07b8ae1d2b029f67fad9adfaa";
  };

  buildType = "ament_python";
  checkInputs = [ action-tutorials-interfaces ament-copyright ament-flake8 ament-pep257 ament-xmllint example-interfaces geometry-msgs launch-ros launch-testing std-msgs std-srvs test-msgs ];
  propagatedBuildInputs = [ control-msgs rclpy rosidl-runtime-py sensor-msgs teleop-tools-msgs trajectory-msgs ];

  meta = {
    description = ''A (to be) generic joystick interface to control a robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

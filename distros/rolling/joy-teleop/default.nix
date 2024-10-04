
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, control-msgs, example-interfaces, geometry-msgs, launch-ros, launch-testing, rclpy, rosidl-runtime-py, sensor-msgs, std-msgs, std-srvs, teleop-tools-msgs, test-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-joy-teleop";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/rolling/joy_teleop/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "10ca7d44810f6ed2f2df5f3b42292f45be787569a07ff0fa7c8a5187ac262710";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint example-interfaces geometry-msgs launch-ros launch-testing std-msgs std-srvs test-msgs ];
  propagatedBuildInputs = [ control-msgs rclpy rosidl-runtime-py sensor-msgs teleop-tools-msgs trajectory-msgs ];

  meta = {
    description = "A (to be) generic joystick interface to control a robot";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

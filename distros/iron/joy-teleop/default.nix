
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, control-msgs, example-interfaces, geometry-msgs, launch-ros, launch-testing, rclpy, rosidl-runtime-py, sensor-msgs, std-msgs, std-srvs, teleop-tools-msgs, test-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-iron-joy-teleop";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/iron/joy_teleop/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "ba573a9a552614ffdedf99f71c457e008b5c8dee912ffa623d33b1e5e47b2d93";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint example-interfaces geometry-msgs launch-ros launch-testing std-msgs std-srvs test-msgs ];
  propagatedBuildInputs = [ control-msgs rclpy rosidl-runtime-py sensor-msgs teleop-tools-msgs trajectory-msgs ];

  meta = {
    description = "A (to be) generic joystick interface to control a robot";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

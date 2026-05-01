
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, control-msgs, example-interfaces, geometry-msgs, launch-ros, launch-testing, rclpy, rosidl-runtime-py, sensor-msgs, std-msgs, std-srvs, teleop-tools-msgs, test-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-lyrical-joy-teleop";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/lyrical/joy_teleop/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "f0499127d61d4773b6d9759300d8309cee3e27663bb8022e6d1772485f300f9b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint example-interfaces geometry-msgs launch-ros launch-testing std-msgs std-srvs test-msgs ];
  propagatedBuildInputs = [ control-msgs rclpy rosidl-runtime-py sensor-msgs teleop-tools-msgs trajectory-msgs ];

  meta = {
    description = "A (to be) generic joystick interface to control a robot";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

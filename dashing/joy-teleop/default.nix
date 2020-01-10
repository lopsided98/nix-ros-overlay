
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, control-msgs, rclpy, sensor-msgs, teleop-tools-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-dashing-joy-teleop";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/dashing/joy_teleop/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "e6a6750721cacab7e348bc219676b6007b1abba1cdbbd6181bb185284b3bea5a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ control-msgs rclpy sensor-msgs teleop-tools-msgs trajectory-msgs ];

  meta = {
    description = ''A (to be) generic joystick interface to control a robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, ament-copyright, teleop-tools-msgs, ament-xmllint, ament-pep257, rclpy, ament-flake8, control-msgs }:
buildRosPackage {
  pname = "ros-eloquent-joy-teleop";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/eloquent/joy_teleop/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "0d1a64d2d82c78fc77ff2241da5fe9df4a06638bb766f2048e887829b4acec83";
  };

  buildType = "ament_python";
  checkInputs = [ ament-xmllint ament-pep257 ament-flake8 ament-copyright ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs teleop-tools-msgs rclpy control-msgs ];

  meta = {
    description = ''A (to be) generic joystick interface to control a robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

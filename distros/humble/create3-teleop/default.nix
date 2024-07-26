
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-flake8, joy, launch-ros, pythonPackages, teleop-twist-joy, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-humble-create3-teleop";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_examples-release/archive/release/humble/create3_teleop/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "cf3f324e5e4896d95465043219ec5dabf0f7029c797c815816bd69cdd851796d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-cmake-flake8 pythonPackages.pytest ];
  propagatedBuildInputs = [ joy launch-ros teleop-twist-joy teleop-twist-keyboard ];

  meta = {
    description = "Example launch files for teleoperating the iRobot(R) Create(R) 3 Educational Robot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

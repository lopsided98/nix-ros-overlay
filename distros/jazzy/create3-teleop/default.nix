
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-flake8, joy, launch-ros, pythonPackages, teleop-twist-joy, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-jazzy-create3-teleop";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_examples-release/archive/release/jazzy/create3_teleop/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "60c7c49d4df58a113d577ab03d49549bb25fff6da9ebcfd096f7a3e7476ecb7b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-cmake-flake8 pythonPackages.pytest ];
  propagatedBuildInputs = [ joy launch-ros teleop-twist-joy teleop-twist-keyboard ];

  meta = {
    description = "Example launch files for teleoperating the iRobot(R) Create(R) 3 Educational Robot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

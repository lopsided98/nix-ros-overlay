
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, flexbe-states, launch-ros, launch-testing, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-flexbe-onboard";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/humble/flexbe_onboard/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "5ddd23dc86b32df5a0757242e1b97e9fff09d2771144ea2f610b32a8c6d5ffbe";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-testing pythonPackages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs flexbe-states launch-ros rclpy ];

  meta = {
    description = ''flexbe_onboard implements the robot-side of the behavior engine from where all behaviors are started.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, flexbe-states, launch-ros, launch-testing, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-flexbe-onboard";
  version = "2.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/humble/flexbe_onboard/2.3.5-1.tar.gz";
    name = "2.3.5-1.tar.gz";
    sha256 = "e49ab43d3ea9f744e85dfc9e6381b16a17d874960066467db65f492a62d2c044";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-testing pythonPackages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs flexbe-states launch-ros rclpy ];

  meta = {
    description = "flexbe_onboard implements the robot-side of the behavior engine from where all behaviors are started.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

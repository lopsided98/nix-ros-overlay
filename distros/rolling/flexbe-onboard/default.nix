
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, flexbe-states, launch-ros, launch-testing, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-flexbe-onboard";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/rolling/flexbe_onboard/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "5f91d462ba90930d3b0ed916e86313e73111bfc17d12cf529d1fde8f623a24ca";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-testing python3Packages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs flexbe-states launch-ros rclpy ];

  meta = {
    description = "flexbe_onboard implements the robot-side of the behavior engine from where all behaviors are started.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

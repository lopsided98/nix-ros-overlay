
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, flexbe-states, launch-ros, launch-testing, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-kilted-flexbe-onboard";
  version = "4.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/kilted/flexbe_onboard/4.1.3-1.tar.gz";
    name = "4.1.3-1.tar.gz";
    sha256 = "1ff0f585825f26e9c405a257a155974813ed5e562856e877d058e74424555f73";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-testing python3Packages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs flexbe-states launch-ros rclpy ];

  meta = {
    description = "flexbe_onboard implements the robot-side of the behavior engine from where all behaviors are started.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

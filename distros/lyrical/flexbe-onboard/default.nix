
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, flexbe-states, launch-ros, launch-testing, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-flexbe-onboard";
  version = "4.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/lyrical/flexbe_onboard/4.0.3-3.tar.gz";
    name = "4.0.3-3.tar.gz";
    sha256 = "da376cea8034b70a7b2dc6410ad9bfe4ffb846ce218cdad0a70c086cc16e9390";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-testing python3Packages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs flexbe-states launch-ros rclpy ];

  meta = {
    description = "flexbe_onboard implements the robot-side of the behavior engine from where all behaviors are started.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

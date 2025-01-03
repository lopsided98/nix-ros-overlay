
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-msgs, launch-ros, launch-testing, python3Packages, rclpy, std-msgs, std-srvs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-rolling-flexbe-core";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/rolling/flexbe_core/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "76b58d6ab8f14f45091b131ad6f57d9514f7dfe357df9e0f9fb8c4432e77b2ac";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-ros launch-testing python3Packages.pytest ];
  propagatedBuildInputs = [ flexbe-msgs rclpy std-msgs std-srvs tf2-ros-py ];

  meta = {
    description = "flexbe_core provides the core components for the FlexBE behavior engine.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-msgs, launch-ros, launch-testing, pythonPackages, rclpy, std-msgs, std-srvs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-iron-flexbe-core";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/iron/flexbe_core/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "0204c5465f74e4c52603a2c3c26eb3db449ada267ac75f21b8f3a4afa5717e5e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-ros launch-testing pythonPackages.pytest ];
  propagatedBuildInputs = [ flexbe-msgs rclpy std-msgs std-srvs tf2-ros-py ];

  meta = {
    description = "flexbe_core provides the core components for the FlexBE behavior engine.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

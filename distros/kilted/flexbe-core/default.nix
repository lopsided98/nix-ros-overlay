
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-msgs, launch-ros, launch-testing, python3Packages, rclpy, std-msgs, std-srvs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-kilted-flexbe-core";
  version = "4.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/kilted/flexbe_core/4.1.3-1.tar.gz";
    name = "4.1.3-1.tar.gz";
    sha256 = "a4d0e54ad241fe6ab607fddf77249f3eac7af77a919450e0c79c58044f02a9a7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-ros launch-testing python3Packages.pytest ];
  propagatedBuildInputs = [ flexbe-msgs rclpy std-msgs std-srvs tf2-ros-py ];

  meta = {
    description = "flexbe_core provides the core components for the FlexBE behavior engine.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

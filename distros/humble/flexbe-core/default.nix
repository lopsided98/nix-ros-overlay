
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-msgs, launch-ros, launch-testing, python3Packages, rclpy, std-msgs, std-srvs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-humble-flexbe-core";
  version = "2.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/humble/flexbe_core/2.3.5-1.tar.gz";
    name = "2.3.5-1.tar.gz";
    sha256 = "c4349b45d418a33c369a20ac84c33b1bd5fd9ae7cc7980e274f34db89910fd31";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-ros launch-testing python3Packages.pytest ];
  propagatedBuildInputs = [ flexbe-msgs rclpy std-msgs std-srvs tf2-ros-py ];

  meta = {
    description = "flexbe_core provides the core components for the FlexBE behavior engine.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-msgs, launch-ros, launch-testing, pythonPackages, rclpy, std-msgs, std-srvs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-jazzy-flexbe-core";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/jazzy/flexbe_core/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "9212b1e039a928924bba63a69ab37271b99bbc60390b145a0458719fb5599a59";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-ros launch-testing pythonPackages.pytest ];
  propagatedBuildInputs = [ flexbe-msgs rclpy std-msgs std-srvs tf2-ros-py ];

  meta = {
    description = "flexbe_core provides the core components for the FlexBE behavior engine.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-msgs, launch-ros, launch-testing, pythonPackages, rclpy, std-msgs, std-srvs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-humble-flexbe-core";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/humble/flexbe_core/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "8ef39c4f019dbe6cdfeb45767312e3453ba6e9f5e4236d9fe98a0d3f701f8d72";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-ros launch-testing pythonPackages.pytest ];
  propagatedBuildInputs = [ flexbe-msgs rclpy std-msgs std-srvs tf2-ros-py ];

  meta = {
    description = ''flexbe_core provides the core components for the FlexBE behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

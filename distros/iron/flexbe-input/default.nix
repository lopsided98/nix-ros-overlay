
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-iron-flexbe-input";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/iron/flexbe_input/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "92ba47279ee5e32e088f49e7201a9a7d533003879254087b8b03cb130a75c800";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rclpy ];

  meta = {
    description = "flexbe_input enables to send data to onboard behavior when required.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

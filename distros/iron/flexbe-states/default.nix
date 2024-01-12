
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, flexbe-testing, geometry-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-iron-flexbe-states";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/iron/flexbe_states/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "aa6d0ec9aea6ea5df2a1ab8e13eaacc633ebe885c7bad50f8670ca25b212eb4c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 geometry-msgs pythonPackages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs flexbe-testing rclpy ];

  meta = {
    description = ''flexbe_states provides a collection of common generic predefined states.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

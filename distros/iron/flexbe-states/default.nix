
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, flexbe-testing, geometry-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-iron-flexbe-states";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/iron/flexbe_states/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "f6be9eb888f60a4dcc22e237910a30c09b3a71e74801cad72eea885f5b0c3450";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 geometry-msgs pythonPackages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs flexbe-testing rclpy ];

  meta = {
    description = "flexbe_states provides a collection of common generic predefined states.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

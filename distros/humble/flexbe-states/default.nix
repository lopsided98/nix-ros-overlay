
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, flexbe-testing, geometry-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-flexbe-states";
  version = "2.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/humble/flexbe_states/2.3.5-1.tar.gz";
    name = "2.3.5-1.tar.gz";
    sha256 = "4f973c670375b47a2ee3de4fdeb74e4601d6ef4980952431b8147d0d1dd15228";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 geometry-msgs pythonPackages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs flexbe-testing rclpy ];

  meta = {
    description = "flexbe_states provides a collection of common generic predefined states.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

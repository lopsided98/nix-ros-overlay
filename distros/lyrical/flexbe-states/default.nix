
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, flexbe-testing, geometry-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-flexbe-states";
  version = "4.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/lyrical/flexbe_states/4.0.3-3.tar.gz";
    name = "4.0.3-3.tar.gz";
    sha256 = "f2340fa27b5c7fc6c4873ca7167df712221d00ffa13722369b074f4f999ed1bb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 geometry-msgs python3Packages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs flexbe-testing rclpy ];

  meta = {
    description = "flexbe_states provides a collection of common generic predefined states.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

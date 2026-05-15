
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, flexbe-testing, geometry-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-kilted-flexbe-states";
  version = "4.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/kilted/flexbe_states/4.1.3-1.tar.gz";
    name = "4.1.3-1.tar.gz";
    sha256 = "c06ea96443c272b93f8fa40487c19b0c1a76ca61bf7b5f9e379ab930053f13f5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 geometry-msgs python3Packages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs flexbe-testing rclpy ];

  meta = {
    description = "flexbe_states provides a collection of common generic predefined states.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

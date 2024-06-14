
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, flexbe-testing, geometry-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-flexbe-states";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/jazzy/flexbe_states/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "704adaa10ab0bfc534503c10d8b4a4304da7ef5354205f9b61ddf046cccb85a9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 geometry-msgs pythonPackages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs flexbe-testing rclpy ];

  meta = {
    description = "flexbe_states provides a collection of common generic predefined states.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

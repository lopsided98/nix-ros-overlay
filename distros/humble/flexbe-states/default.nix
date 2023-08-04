
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, flexbe-testing, geometry-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-flexbe-states";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/humble/flexbe_states/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "104baa5b0ccd7a0fde26ffa7678367dc88a8a97fac6db64eb8996468bf949d5a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 geometry-msgs pythonPackages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs flexbe-testing rclpy ];

  meta = {
    description = ''flexbe_states provides a collection of common generic predefined states.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

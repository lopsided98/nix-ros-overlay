
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-flexbe-input";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/humble/flexbe_input/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "041bc878980e1a557f4ac70c18f2e3d72ac61afba7555e2d6e7da03a0710bd08";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rclpy ];

  meta = {
    description = ''flexbe_input enables to send data to onboard behavior when required.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

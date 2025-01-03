
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, python3Packages, rclpy, scenario-execution-ros }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-gazebo";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_gazebo/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "5624e3ed7396a9415d4dfec5d4ab70306e0814a73b57f3ecf2e490d976bfe8ed";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ py-trees python3Packages.defusedxml python3Packages.transforms3d rclpy scenario-execution-ros ];

  meta = {
    description = "Scenario Execution library for Gazebo";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, python3Packages, pythonPackages, rclpy, scenario-execution-ros }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-gazebo";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_gazebo/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "72670031cb3f9f5a4fdeb3f1d1f43685a0e70803a074e66e8d5e63e3aaa4a473";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ py-trees python3Packages.defusedxml python3Packages.transforms3d rclpy scenario-execution-ros ];

  meta = {
    description = "Scenario Execution library for Gazebo";
    license = with lib.licenses; [ asl20 ];
  };
}

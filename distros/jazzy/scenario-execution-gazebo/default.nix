
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, python3Packages, pythonPackages, rclpy, scenario-execution-ros }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-gazebo";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_gazebo/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "3faeb5bc44cb074cb4b1223757c236949c8fa122a7de6f306796bc6c0b1c2fb2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ py-trees python3Packages.defusedxml python3Packages.transforms3d rclpy scenario-execution-ros ];

  meta = {
    description = "Scenario Execution library for Gazebo";
    license = with lib.licenses; [ asl20 ];
  };
}

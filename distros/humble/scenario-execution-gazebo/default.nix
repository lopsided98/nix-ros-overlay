
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, python3Packages, pythonPackages, rclpy, scenario-execution-ros }:
buildRosPackage {
  pname = "ros-humble-scenario-execution-gazebo";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/humble/scenario_execution_gazebo/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "e8d6dcb3e7ec15f9fb2ccc87d3b6378f196dd32ef00c60b21e346142ac65934e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ py-trees python3Packages.defusedxml python3Packages.transforms3d rclpy scenario-execution-ros ];

  meta = {
    description = "Scenario Execution library for Gazebo";
    license = with lib.licenses; [ asl20 ];
  };
}

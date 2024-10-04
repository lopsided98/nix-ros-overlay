
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, py-trees-ros, py-trees-ros-interfaces, python3Packages, pythonPackages, rcl-interfaces, rclpy, scenario-execution, scenario-execution-py-trees-ros, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-ros";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_ros/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "0ecfd343bfffc8ae838da4d493de2eb438156ce3bb3bae0afe052d2f4d4f253c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ py-trees py-trees-ros py-trees-ros-interfaces python3Packages.transforms3d rcl-interfaces rclpy scenario-execution scenario-execution-py-trees-ros visualization-msgs xacro ];

  meta = {
    description = "Scenario Execution for ROS";
    license = with lib.licenses; [ asl20 ];
  };
}

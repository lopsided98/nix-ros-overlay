
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, py-trees-ros, py-trees-ros-interfaces, python3Packages, pythonPackages, rcl-interfaces, rclpy, scenario-execution, scenario-execution-py-trees-ros, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-ros";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_ros/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "6c0c78d73c714e276123cfe18b33858ae577a9112991a2c5a7adde8c925a74d6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ py-trees py-trees-ros py-trees-ros-interfaces python3Packages.transforms3d rcl-interfaces rclpy scenario-execution scenario-execution-py-trees-ros visualization-msgs xacro ];

  meta = {
    description = "Scenario Execution for ROS";
    license = with lib.licenses; [ asl20 ];
  };
}

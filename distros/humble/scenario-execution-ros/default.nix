
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, py-trees-ros, py-trees-ros-interfaces, python3Packages, pythonPackages, rcl-interfaces, rclpy, scenario-execution, scenario-execution-py-trees-ros, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-scenario-execution-ros";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/humble/scenario_execution_ros/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "23161372be59030f644107627bfb2f53a0acf9f0deff5b9624cf82dd55e14aea";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ py-trees py-trees-ros py-trees-ros-interfaces python3Packages.transforms3d rcl-interfaces rclpy scenario-execution scenario-execution-py-trees-ros visualization-msgs xacro ];

  meta = {
    description = "Scenario Execution for ROS";
    license = with lib.licenses; [ asl20 ];
  };
}

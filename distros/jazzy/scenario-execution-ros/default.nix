
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, py-trees-ros, py-trees-ros-interfaces, python3Packages, rcl-interfaces, rclpy, scenario-execution, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-ros";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_ros/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "ba9327f74b842f0fd1bfd89b2f40f2e88ebb51676106e93aa03c5600d68333e5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ py-trees py-trees-ros py-trees-ros-interfaces python3Packages.transforms3d rcl-interfaces rclpy scenario-execution visualization-msgs xacro ];

  meta = {
    description = "Scenario Execution for ROS";
    license = with lib.licenses; [ asl20 ];
  };
}

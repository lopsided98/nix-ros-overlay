
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, py-trees-ros, py-trees-ros-interfaces, python3Packages, pythonPackages, rcl-interfaces, rclpy, scenario-execution, scenario-execution-py-trees-ros, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-scenario-execution-ros";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/humble/scenario_execution_ros/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "ec7bc6ad9c591d5f73ec701add3cb0f05d7c3349ccd24f59eb3850628064416b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ py-trees py-trees-ros py-trees-ros-interfaces python3Packages.transforms3d rcl-interfaces rclpy scenario-execution scenario-execution-py-trees-ros visualization-msgs xacro ];

  meta = {
    description = "Scenario Execution for ROS";
    license = with lib.licenses; [ asl20 ];
  };
}

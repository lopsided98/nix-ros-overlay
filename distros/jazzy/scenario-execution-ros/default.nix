
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, py-trees-ros, py-trees-ros-interfaces, python3Packages, rcl-interfaces, rclpy, rosgraph-msgs, scenario-execution, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-ros";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_ros/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "1493ab3f54a8c70e17494400543afb35fe99c0f4f6703ca8731fa347ac412dc7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ py-trees py-trees-ros py-trees-ros-interfaces python3Packages.transforms3d rcl-interfaces rclpy rosgraph-msgs scenario-execution visualization-msgs xacro ];

  meta = {
    description = "Scenario Execution for ROS";
    license = with lib.licenses; [ asl20 ];
  };
}

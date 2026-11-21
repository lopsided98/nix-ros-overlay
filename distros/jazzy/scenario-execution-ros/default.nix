
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, py-trees-ros, py-trees-ros-interfaces, python3Packages, rcl-interfaces, rclpy, rosgraph-msgs, scenario-execution, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-ros";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_ros/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "c1d5c3bc53d3db2112391a90db4b4b11e8327dc105daeaf278cf5985dcf9c3ca";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ py-trees py-trees-ros py-trees-ros-interfaces python3Packages.transforms3d rcl-interfaces rclpy rosgraph-msgs scenario-execution visualization-msgs xacro ];

  meta = {
    description = "Scenario Execution for ROS";
    license = with lib.licenses; [ asl20 ];
  };
}

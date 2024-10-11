
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, python3Packages, pythonPackages, rclpy, scenario-execution-ros }:
buildRosPackage {
  pname = "ros-humble-scenario-execution-gazebo";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/humble/scenario_execution_gazebo/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "bf241da62679f8ede0802e040cb62dd4b6c86b07cfda85b9c91ab569e5fa5249";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ py-trees python3Packages.defusedxml python3Packages.transforms3d rclpy scenario-execution-ros ];

  meta = {
    description = "Scenario Execution library for Gazebo";
    license = with lib.licenses; [ asl20 ];
  };
}

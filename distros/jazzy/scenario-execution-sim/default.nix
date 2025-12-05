
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, python3Packages, rclpy, scenario-execution-ros, simulation-interfaces }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-sim";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_sim/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "8aa3fb782712671b9a1062165c9316d7233ca30ded01f398de0652b07ee85d70";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ py-trees python3Packages.defusedxml python3Packages.transforms3d rclpy scenario-execution-ros simulation-interfaces ];

  meta = {
    description = "Scenario Execution library for Simulation";
    license = with lib.licenses; [ asl20 ];
  };
}

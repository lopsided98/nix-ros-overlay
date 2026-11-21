
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, python3Packages, rclpy, scenario-execution-ros, simulation-interfaces }:
buildRosPackage {
  pname = "ros-lyrical-scenario-execution-sim";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/lyrical/scenario_execution_sim/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "18562b3f53862f81fafd0cfdf0e56d95eaa21b6352ceb70982b65d95b3e5db0e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ py-trees python3Packages.defusedxml python3Packages.transforms3d rclpy scenario-execution-ros simulation-interfaces ];

  meta = {
    description = "Scenario Execution library for Simulation";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, python3Packages, rclpy, scenario-execution-ros, simulation-interfaces }:
buildRosPackage {
  pname = "ros-lyrical-scenario-execution-sim";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/lyrical/scenario_execution_sim/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "a7d8e4f0d84aa8029b184a112b197271d496df74d19bacb4a7aba8bdfd7acdc6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ py-trees python3Packages.defusedxml python3Packages.transforms3d rclpy scenario-execution-ros simulation-interfaces ];

  meta = {
    description = "Scenario Execution library for Simulation";
    license = with lib.licenses; [ asl20 ];
  };
}

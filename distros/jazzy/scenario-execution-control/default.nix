
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, scenario-execution, scenario-execution-interfaces, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-control";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_control/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "eadccee4a5f3343f19e9e70c2d7c008682b52260015692573f875a1aecf6da3c";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy scenario-execution scenario-execution-interfaces std-srvs ];

  meta = {
    description = "Scenario Execution Control";
    license = with lib.licenses; [ asl20 ];
  };
}

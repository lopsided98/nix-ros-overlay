
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, scenario-execution, scenario-execution-interfaces, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-control";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_control/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "99993feed4fa79cd2f0a996090b35193f160e65230a5ac4f932d4ba7535fe22c";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy scenario-execution scenario-execution-interfaces std-srvs ];

  meta = {
    description = "Scenario Execution Control";
    license = with lib.licenses; [ asl20 ];
  };
}

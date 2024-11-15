
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, scenario-execution, scenario-execution-interfaces, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-control";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_control/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "b884b5e242d25edeb7eb8fafc01044a3a9a20c2226f1eea5712dd820387a7ac5";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy scenario-execution scenario-execution-interfaces std-srvs ];

  meta = {
    description = "Scenario Execution Control";
    license = with lib.licenses; [ asl20 ];
  };
}

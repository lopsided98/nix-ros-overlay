
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, scenario-execution, scenario-execution-interfaces, std-srvs }:
buildRosPackage {
  pname = "ros-humble-scenario-execution-control";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/humble/scenario_execution_control/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "bb78d76fb00f4b74ef19933f7de8d2f9f51e49fd60843920f35ff335fcfff4f9";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy scenario-execution scenario-execution-interfaces std-srvs ];

  meta = {
    description = "Scenario Execution Control";
    license = with lib.licenses; [ asl20 ];
  };
}

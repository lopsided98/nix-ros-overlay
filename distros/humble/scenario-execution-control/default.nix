
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, scenario-execution, scenario-execution-interfaces, std-srvs }:
buildRosPackage {
  pname = "ros-humble-scenario-execution-control";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/humble/scenario_execution_control/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "c1e7ef7e7d077365b339f040f2b28d90192fb9cb63a679cdf347efdea6bd3591";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy scenario-execution scenario-execution-interfaces std-srvs ];

  meta = {
    description = "Scenario Execution Control";
    license = with lib.licenses; [ asl20 ];
  };
}

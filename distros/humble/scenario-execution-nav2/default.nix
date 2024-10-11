
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, lifecycle-msgs, nav2-msgs, nav2-simple-commander, pythonPackages, rclpy, scenario-execution-ros, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-scenario-execution-nav2";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/humble/scenario_execution_nav2/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "7ab9aa6869c14e8ff63db9f5cdc36a927edd4a112c1d7944a8959931b65ebbe8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs lifecycle-msgs nav2-msgs nav2-simple-commander rclpy scenario-execution-ros tf2-ros ];

  meta = {
    description = "Scenario Execution library for Nav2";
    license = with lib.licenses; [ asl20 ];
  };
}

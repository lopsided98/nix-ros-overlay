
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, lifecycle-msgs, nav2-msgs, nav2-simple-commander, python3Packages, rclpy, scenario-execution-ros, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-scenario-execution-nav2";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/lyrical/scenario_execution_nav2/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "f847e34c58976802eab989116a65ed6d375da2ab2436bd73b2d92f612ae785c9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs lifecycle-msgs nav2-msgs nav2-simple-commander rclpy scenario-execution-ros tf2-ros ];

  meta = {
    description = "Scenario Execution library for Nav2";
    license = with lib.licenses; [ asl20 ];
  };
}

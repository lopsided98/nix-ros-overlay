
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, lifecycle-msgs, nav2-msgs, nav2-simple-commander, python3Packages, rclpy, scenario-execution-ros, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-nav2";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_nav2/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "4a06ac3b03d5e900085e5bb97bb48b1d3da891abb29d1eed116956b708f7beab";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs lifecycle-msgs nav2-msgs nav2-simple-commander rclpy scenario-execution-ros tf2-ros ];

  meta = {
    description = "Scenario Execution library for Nav2";
    license = with lib.licenses; [ asl20 ];
  };
}

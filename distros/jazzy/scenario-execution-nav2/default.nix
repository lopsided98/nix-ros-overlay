
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, lifecycle-msgs, nav2-msgs, nav2-simple-commander, pythonPackages, rclpy, scenario-execution-ros, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-nav2";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_nav2/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "423989016aff4706d74644fa58dea41dd77387e011cce621bc1cafca82b3757a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs lifecycle-msgs nav2-msgs nav2-simple-commander rclpy scenario-execution-ros tf2-ros ];

  meta = {
    description = "Scenario Execution library for Nav2";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, lifecycle-msgs, nav2-msgs, nav2-simple-commander, pythonPackages, rclpy, scenario-execution-ros, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-nav2";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_nav2/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "1e696280d81db683d2744d2017f9a03148c11812d190d1c21aac02a9855c0feb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs lifecycle-msgs nav2-msgs nav2-simple-commander rclpy scenario-execution-ros tf2-ros ];

  meta = {
    description = "Scenario Execution library for Nav2";
    license = with lib.licenses; [ asl20 ];
  };
}

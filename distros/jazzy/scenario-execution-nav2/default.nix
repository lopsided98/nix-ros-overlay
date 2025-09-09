
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, lifecycle-msgs, nav2-loopback-sim, nav2-msgs, nav2-simple-commander, python3Packages, rclpy, scenario-execution-ros, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-nav2";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_nav2/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "81943c2948cdf500801afe4775ad720e111a7481d05731cec5805ec018b05350";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs lifecycle-msgs nav2-loopback-sim nav2-msgs nav2-simple-commander rclpy scenario-execution-ros tf2-ros ];

  meta = {
    description = "Scenario Execution library for Nav2";
    license = with lib.licenses; [ asl20 ];
  };
}

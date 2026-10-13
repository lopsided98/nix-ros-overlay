
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, libyaml, python3Packages, scenario-execution }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-dataops";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_dataops/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "c9fcced22fd8b16712ef692040e54035cf969ae6491b09e58b32703c6d9ec3e7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ libyaml scenario-execution ];

  meta = {
    description = "Scenario Execution library for data operations";
    license = with lib.licenses; [ asl20 ];
  };
}

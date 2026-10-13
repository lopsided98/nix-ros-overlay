
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, libyaml, python3Packages, scenario-execution }:
buildRosPackage {
  pname = "ros-lyrical-scenario-execution-dataops";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/lyrical/scenario_execution_dataops/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "4a5ff5bc16b36cea204cc61bacd53789dce51fe34693036d7e5f0183eb3676e1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ libyaml scenario-execution ];

  meta = {
    description = "Scenario Execution library for data operations";
    license = with lib.licenses; [ asl20 ];
  };
}

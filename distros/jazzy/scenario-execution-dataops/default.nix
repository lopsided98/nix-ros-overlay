
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, libyaml, python3Packages, scenario-execution }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-dataops";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_dataops/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "1c2109fc86db95d8431a70f461e3e11d6e7ec844e56bce74651c508314db116b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ libyaml scenario-execution ];

  meta = {
    description = "Scenario Execution library for data operations";
    license = with lib.licenses; [ asl20 ];
  };
}

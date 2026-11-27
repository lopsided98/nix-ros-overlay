
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, libyaml, python3Packages, scenario-execution }:
buildRosPackage {
  pname = "ros-lyrical-scenario-execution-dataops";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/lyrical/scenario_execution_dataops/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "bd4cae37f75d17fc00cbe356b9f6ede3987b5e159d8ea06106ec843ec59f0750";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ libyaml scenario-execution ];

  meta = {
    description = "Scenario Execution library for data operations";
    license = with lib.licenses; [ asl20 ];
  };
}

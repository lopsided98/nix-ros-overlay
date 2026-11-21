
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, scenario-execution }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-network";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_network/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "0d69a7d9f3ea6444bfde829972b62c925e8a6d74aa1c47a0af5439d2c4980ec2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ scenario-execution ];

  meta = {
    description = "Scenario Execution library for network functionality";
    license = with lib.licenses; [ asl20 ];
  };
}

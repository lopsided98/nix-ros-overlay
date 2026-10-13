
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, scenario-execution }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-network";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_network/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "097d9192dc3cbbc2bb71d7557e0c4a001e83209d5c6a66f7f4b285aede96ab5e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ scenario-execution ];

  meta = {
    description = "Scenario Execution library for network functionality";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, scenario-execution }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-coverage";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_coverage/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "e7de2dbcdb5f3efa253b8fd51d7d9e8e685c28f2101eecadbcc2efe469c6f424";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.defusedxml python3Packages.pexpect python3Packages.pytest ];
  propagatedBuildInputs = [ scenario-execution ];

  meta = {
    description = "Robotics Scenario Execution Coverage Tools";
    license = with lib.licenses; [ asl20 ];
  };
}

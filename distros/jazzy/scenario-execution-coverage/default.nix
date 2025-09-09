
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, scenario-execution }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-coverage";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_coverage/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "a1ebf3d7dcb0663edc5345ae599f981205b17652be4642c2226f8e909309a500";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.defusedxml python3Packages.pexpect python3Packages.pytest ];
  propagatedBuildInputs = [ scenario-execution ];

  meta = {
    description = "Robotics Scenario Execution Coverage Tools";
    license = with lib.licenses; [ asl20 ];
  };
}

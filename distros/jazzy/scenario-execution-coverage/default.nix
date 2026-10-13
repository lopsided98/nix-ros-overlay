
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, scenario-execution }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-coverage";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_coverage/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "49e10d161e8ea99bac8c7fcc1b07b67516842a80b99b8d2aa0c948d1cdb2fe8b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.defusedxml python3Packages.pexpect python3Packages.pytest ];
  propagatedBuildInputs = [ scenario-execution ];

  meta = {
    description = "Robotics Scenario Execution Coverage Tools";
    license = with lib.licenses; [ asl20 ];
  };
}

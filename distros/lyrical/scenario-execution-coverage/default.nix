
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, scenario-execution }:
buildRosPackage {
  pname = "ros-lyrical-scenario-execution-coverage";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/lyrical/scenario_execution_coverage/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "dd0821fa54091f8841fd3606ac30d832a46e1fcc75c9e7fb708d0ec08b902c01";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.defusedxml python3Packages.pexpect python3Packages.pytest ];
  propagatedBuildInputs = [ scenario-execution ];

  meta = {
    description = "Robotics Scenario Execution Coverage Tools";
    license = with lib.licenses; [ asl20 ];
  };
}

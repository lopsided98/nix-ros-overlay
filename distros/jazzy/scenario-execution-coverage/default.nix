
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, scenario-execution }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-coverage";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_coverage/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "2db7f3a1261ed3483f14d0331b5974044ff3e9090550c9b65215dfdc29895273";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.defusedxml python3Packages.pexpect python3Packages.pytest ];
  propagatedBuildInputs = [ scenario-execution ];

  meta = {
    description = "Robotics Scenario Execution Coverage Tools";
    license = with lib.licenses; [ asl20 ];
  };
}

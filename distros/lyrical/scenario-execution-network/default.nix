
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, scenario-execution }:
buildRosPackage {
  pname = "ros-lyrical-scenario-execution-network";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/lyrical/scenario_execution_network/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "4d89bc44af222a82da7ae983b0d501cc7197efb038019d496b1e633994b5fb5a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ scenario-execution ];

  meta = {
    description = "Scenario Execution library for network functionality";
    license = with lib.licenses; [ asl20 ];
  };
}

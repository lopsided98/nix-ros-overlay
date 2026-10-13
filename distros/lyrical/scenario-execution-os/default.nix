
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, scenario-execution }:
buildRosPackage {
  pname = "ros-lyrical-scenario-execution-os";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/lyrical/scenario_execution_os/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "cbe0a3fa0fb1f5bd989ce21ede5ab399aba4ec216cf20a280b3e4cd2102a8bbd";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ scenario-execution ];

  meta = {
    description = "Scenario Execution library for OS interactions";
    license = with lib.licenses; [ asl20 ];
  };
}

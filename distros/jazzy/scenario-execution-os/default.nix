
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, scenario-execution }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-os";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_os/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "30953dc7a841235b46da7037a09bd24c320f51fdbe404c1cde432923ac9e6449";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ scenario-execution ];

  meta = {
    description = "Scenario Execution library for OS interactions";
    license = with lib.licenses; [ asl20 ];
  };
}

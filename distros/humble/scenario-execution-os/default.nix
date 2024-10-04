
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, scenario-execution }:
buildRosPackage {
  pname = "ros-humble-scenario-execution-os";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/humble/scenario_execution_os/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "ea1357c32e9f5f9cca156c82ae0234e07ef6a9636037e19251fdc41d75a94bfe";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ scenario-execution ];

  meta = {
    description = "Scenario Execution library for OS interactions";
    license = with lib.licenses; [ asl20 ];
  };
}

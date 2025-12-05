
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, libyaml, python3Packages, scenario-execution }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-dataops";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_dataops/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "128e87014dd2634dc3fb94dd5abcdf93a691b662e70c0b16ece1c46642f7a89a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ libyaml scenario-execution ];

  meta = {
    description = "Scenario Execution library for data operations";
    license = with lib.licenses; [ asl20 ];
  };
}

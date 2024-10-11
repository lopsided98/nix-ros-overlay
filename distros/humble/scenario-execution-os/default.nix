
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, scenario-execution }:
buildRosPackage {
  pname = "ros-humble-scenario-execution-os";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/humble/scenario_execution_os/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "3ac736ce354718851f6df5c8eb734e7711884e383252da61974d7658fc9ad7ab";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ scenario-execution ];

  meta = {
    description = "Scenario Execution library for OS interactions";
    license = with lib.licenses; [ asl20 ];
  };
}

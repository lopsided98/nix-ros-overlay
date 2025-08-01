
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "ca3b5d00232c17069b640ebdd4610c69c4fe995e6dfe0bc0665119ebeae08ec0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ py-trees python3Packages.antlr4-python3-runtime python3Packages.pyyaml ];

  meta = {
    description = "Scenario Execution";
    license = with lib.licenses; [ asl20 ];
  };
}

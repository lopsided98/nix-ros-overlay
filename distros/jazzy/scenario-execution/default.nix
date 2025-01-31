
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "30b86900df5a1cdcba45c6b0e59f468742a420584cd905b974edc434b8fd4442";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ py-trees python3Packages.antlr4-python3-runtime python3Packages.pyyaml ];

  meta = {
    description = "Scenario Execution";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "39be8cece719f5774aec210bf0f34cda080cea1173e395759d8020f9f4a42de1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ py-trees python3Packages.antlr4-python3-runtime python3Packages.pyyaml ];

  meta = {
    description = "Scenario Execution";
    license = with lib.licenses; [ asl20 ];
  };
}

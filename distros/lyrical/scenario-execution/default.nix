
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-scenario-execution";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/lyrical/scenario_execution/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "f9588f69702880274cfbea5da8ac6af7a60038d2a2889c523c5dd1e9f4bbee81";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ py-trees python3Packages.antlr4-python3-runtime python3Packages.pyyaml ];

  meta = {
    description = "Scenario Execution";
    license = with lib.licenses; [ asl20 ];
  };
}

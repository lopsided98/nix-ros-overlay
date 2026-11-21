
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, py-trees, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "900c2491300fe07be4a038e56c1594a119805e36964c499576bf7f16ee5f4196";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ py-trees python3Packages.antlr4-python3-runtime python3Packages.pyyaml ];

  meta = {
    description = "Scenario Execution";
    license = with lib.licenses; [ asl20 ];
  };
}

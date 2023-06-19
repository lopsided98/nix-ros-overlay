
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-pclint";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pclint/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "ecda5dfcca8a5c5ed7c0a34b05502892398c4112dcefa0041eb0dddc1474fe69";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''The ability to perform static code analysis on C/C++ code using PC-lint
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

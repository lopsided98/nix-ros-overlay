
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-lint-cmake";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_lint_cmake/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "03f00b38860f5b2ede91df87707ae367656e9e49a3be4427b89fad863149cc7d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''The ability to lint CMake code using cmakelint and generate xUnit test
    result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-lint-cmake";
  version = "0.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_lint_cmake/0.16.4-1.tar.gz";
    name = "0.16.4-1.tar.gz";
    sha256 = "eca211e3da900715acc6d45ba4c3a00f959292be147874f6bd16d30a9ec5324d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = "The ability to lint CMake code using cmakelint and generate xUnit test
    result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

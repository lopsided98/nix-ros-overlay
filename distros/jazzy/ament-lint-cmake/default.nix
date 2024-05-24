
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-jazzy-ament-lint-cmake";
  version = "0.17.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_lint_cmake/0.17.0-2.tar.gz";
    name = "0.17.0-2.tar.gz";
    sha256 = "ff8872ff4ce6e89bb45fecf6f42e44c7b40eb2d00de3033e45903509723161ff";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = "The ability to lint CMake code using cmakelint and generate xUnit test
    result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

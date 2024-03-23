
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-ament-lint-cmake";
  version = "0.14.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/iron/ament_lint_cmake/0.14.3-1.tar.gz";
    name = "0.14.3-1.tar.gz";
    sha256 = "28f753bedec1f60dee81ad91cc88aaf217cec8bd35d52e87bc21cf58bd13d954";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = "The ability to lint CMake code using cmakelint and generate xUnit test
    result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

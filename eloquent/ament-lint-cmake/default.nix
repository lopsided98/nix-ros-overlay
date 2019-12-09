
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pep257, pythonPackages, ament-flake8, ament-copyright }:
buildRosPackage {
  pname = "ros-eloquent-ament-lint-cmake";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_lint_cmake/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "aaa318c08e1d1571b7af7ca101c2677f36f3f63de5d75f79f126b47712b289d1";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];

  meta = {
    description = ''The ability to lint CMake code using cmakelint and generate xUnit test
    result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

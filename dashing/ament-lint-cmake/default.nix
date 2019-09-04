
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, pythonPackages, ament-flake8, ament-pep257 }:
buildRosPackage {
  pname = "ros-dashing-ament-lint-cmake";
  version = "0.7.9-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_lint_cmake/0.7.9-1.tar.gz;
    sha256 = "c9f90935719a1dd4a69348bb234db38759792e167b1b2e5e0ee5c639b2dfc5ce";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];

  meta = {
    description = ''The ability to lint CMake code using cmakelint and generate xUnit test
    result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

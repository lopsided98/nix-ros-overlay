
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-lint-cmake";
  version = "0.20.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_lint_cmake/0.20.5-3.tar.gz";
    name = "0.20.5-3.tar.gz";
    sha256 = "9544892ed2c83b2a317a199e7c6af3c7cba3314c6369e3ae2341dc380787e0e1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "The ability to lint CMake code using cmakelint and generate xUnit test
    result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

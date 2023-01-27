
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-ament-lint-cmake";
  version = "0.12.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_lint_cmake/0.12.5-1.tar.gz";
    name = "0.12.5-1.tar.gz";
    sha256 = "aebfbd73d7e39c7e1524c4591e6252ea36c251c71dc346111a888d4dd6030cca";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''The ability to lint CMake code using cmakelint and generate xUnit test
    result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

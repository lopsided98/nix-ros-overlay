
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-ament-pclint";
  version = "0.12.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_pclint/0.12.5-1.tar.gz";
    name = "0.12.5-1.tar.gz";
    sha256 = "bdf39e30d1b93b70239ebe007cfa2b0bdff2e421fa961a875d04fe2b3ddbddbc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''The ability to perform static code analysis on C/C++ code using PC-lint
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pep257, pythonPackages, ament-flake8, ament-copyright }:
buildRosPackage {
  pname = "ros-crystal-ament-pclint";
  version = "0.6.4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/ament_pclint/0.6.4-0.tar.gz";
    name = "0.6.4-0.tar.gz";
    sha256 = "a08c29729914d6bed1c19c6f4db8372abb0c76318a20d901af6432e517bc62e2";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];

  meta = {
    description = ''The ability to perform static code analysis on C/C++ code using pclint
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

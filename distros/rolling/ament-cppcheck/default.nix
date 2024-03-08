
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-pycodestyle, cppcheck, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-cppcheck";
  version = "0.16.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cppcheck/0.16.3-2.tar.gz";
    name = "0.16.3-2.tar.gz";
    sha256 = "7bd60f1ad90d7f093d7bd696087fb61d9eb911333687faa6da08093835f46a37";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-pycodestyle pythonPackages.pytest ];
  propagatedBuildInputs = [ cppcheck ];

  meta = {
    description = ''The ability to perform static code analysis on C/C++ code using Cppcheck
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

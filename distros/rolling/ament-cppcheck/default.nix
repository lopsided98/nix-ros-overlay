
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-pycodestyle, ament-xmllint, cppcheck, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-cppcheck";
  version = "0.20.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cppcheck/0.20.2-1.tar.gz";
    name = "0.20.2-1.tar.gz";
    sha256 = "1b6e02a7b1dbc69a156a738925c1a03b945ec104867e11240e291d67db23f684";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-pycodestyle ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ cppcheck ];

  meta = {
    description = "The ability to perform static code analysis on C/C++ code using Cppcheck
    and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-pycodestyle, cppcheck, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-cppcheck";
  version = "0.17.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_cppcheck/0.17.5-1.tar.gz";
    name = "0.17.5-1.tar.gz";
    sha256 = "e9ed1c22e2c22b1d1e91f110bb78d79ee927bb86f89f77521e1bc4ab3ecd1413";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-pycodestyle python3Packages.pytest ];
  propagatedBuildInputs = [ cppcheck ];

  meta = {
    description = "The ability to perform static code analysis on C/C++ code using Cppcheck
    and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

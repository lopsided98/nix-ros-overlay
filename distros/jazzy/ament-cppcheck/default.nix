
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-pycodestyle, cppcheck, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-cppcheck";
  version = "0.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_cppcheck/0.17.3-1.tar.gz";
    name = "0.17.3-1.tar.gz";
    sha256 = "c1b57bf6bea491e5738fde10e397a6b59c09a2e9a511d30a4a5aa9353dc8dfb0";
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

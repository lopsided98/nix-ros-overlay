
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-pclint";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pclint/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "e6ac1501c387daf3d4796ed4548c02dffe23ca2e1882a7134e7f609df352f3df";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "The ability to perform static code analysis on C/C++ code using PC-lint
    and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

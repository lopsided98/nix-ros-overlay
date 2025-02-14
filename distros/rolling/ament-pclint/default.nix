
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-pclint";
  version = "0.19.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pclint/0.19.1-1.tar.gz";
    name = "0.19.1-1.tar.gz";
    sha256 = "067f2fb9c20bebcfef344fa728fb98e2b349b5e56a2523d569097ee7e9e36d8a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "The ability to perform static code analysis on C/C++ code using PC-lint
    and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

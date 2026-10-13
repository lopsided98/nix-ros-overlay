
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-ament-pclint";
  version = "0.20.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/lyrical/ament_pclint/0.20.7-1.tar.gz";
    name = "0.20.7-1.tar.gz";
    sha256 = "fe45a4a45e0dfaf024b3882f5112044ace5ddb323d3f7783a0114747936dac58";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "The ability to perform static code analysis on C/C++ code using PC-lint
    and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

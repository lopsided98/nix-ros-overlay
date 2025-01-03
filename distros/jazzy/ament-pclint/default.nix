
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-pclint";
  version = "0.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_pclint/0.17.1-1.tar.gz";
    name = "0.17.1-1.tar.gz";
    sha256 = "bc414fcdd721e2ce1230bdccf416dbdbf060125b07800c3ab93d93fea60edcb5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];

  meta = {
    description = "The ability to perform static code analysis on C/C++ code using PC-lint
    and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

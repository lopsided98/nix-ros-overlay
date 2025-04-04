
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-lint-cmake";
  version = "0.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_lint_cmake/0.17.2-1.tar.gz";
    name = "0.17.2-1.tar.gz";
    sha256 = "c122f702f7c376a05f1c602f5016a77e75745cc9eea594f4e27ec2ac45479803";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];

  meta = {
    description = "The ability to lint CMake code using cmakelint and generate xUnit test
    result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

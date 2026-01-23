
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, clang, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-clang-tidy";
  version = "0.17.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_clang_tidy/0.17.4-1.tar.gz";
    name = "0.17.4-1.tar.gz";
    sha256 = "15f0881d20dbdd974b80665dee163a0bd8cd8ccce917628ebab6b50fa09cd888";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ clang python3Packages.pyyaml ];

  meta = {
    description = "The ability to check code against style conventions using
    clang-tidy and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, clang, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-clang-tidy";
  version = "0.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_clang_tidy/0.16.0-1.tar.gz";
    name = "0.16.0-1.tar.gz";
    sha256 = "5a7ac9b93a24de3f9731ee935d15686a753d9290e75ae2aaf901b7fd6585007a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ clang python3Packages.pyyaml ];

  meta = {
    description = ''The ability to check code against style conventions using
    clang-tidy and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

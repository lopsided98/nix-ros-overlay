
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-galactic-nodl-python";
  version = "0.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/galactic/nodl_python/0.3.1-2.tar.gz";
    name = "0.3.1-2.tar.gz";
    sha256 = "a220ff41179f4935960d85dda4537c3cfd35b822ddfc7ceaab2d901706ffd7ac";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.lxml ];

  meta = {
    description = ''Implementation of the NoDL API in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}

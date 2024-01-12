
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-nodl-python";
  version = "0.3.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/iron/nodl_python/0.3.1-4.tar.gz";
    name = "0.3.1-4.tar.gz";
    sha256 = "23de4c8d5d2678f06323a2beb19740709e1f06cd789ed23c767022df20e35c25";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.lxml ];

  meta = {
    description = ''Implementation of the NoDL API in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-nodl-python";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/foxy/nodl_python/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "e0877d94c8a263f37fc70675cbef35906d0618793334bf725d02bb76db9ebe2d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.lxml ];

  meta = {
    description = ''Implementation of the NoDL API in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}

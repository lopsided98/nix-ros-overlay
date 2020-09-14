
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-nodl-python";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/foxy/nodl_python/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "b9d627af5e725e469865c96d8e74b3225b285532e3133879fb188b79e4d242bd";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.lxml ];

  meta = {
    description = ''Implementation of the NoDL API in Python.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}

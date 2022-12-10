
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-nodl-python";
  version = "0.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/rolling/nodl_python/0.3.1-2.tar.gz";
    name = "0.3.1-2.tar.gz";
    sha256 = "9be2d3408e0aa17320fe45de4099172e8345862f33a6b266f79a2ea0422b05dc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.lxml ];

  meta = {
    description = ''Implementation of the NoDL API in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-nodl-python";
  version = "0.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/humble/nodl_python/0.3.1-3.tar.gz";
    name = "0.3.1-3.tar.gz";
    sha256 = "28cc84ae1693342eae59a7d0bbad72c4dcce03b1dd2e4474fe3a597c76798bbd";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.lxml ];

  meta = {
    description = ''Implementation of the NoDL API in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-jazzy-nodl-python";
  version = "0.3.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/jazzy/nodl_python/0.3.1-5.tar.gz";
    name = "0.3.1-5.tar.gz";
    sha256 = "e6f4f6818bcb0a6131cabf02ce2da049c44e597dcbc5325edb760c2616c9c690";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.lxml ];

  meta = {
    description = "Implementation of the NoDL API in Python.";
    license = with lib.licenses; [ asl20 ];
  };
}

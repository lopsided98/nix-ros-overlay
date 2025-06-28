
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-nodl-python";
  version = "0.3.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/kilted/nodl_python/0.3.1-5.tar.gz";
    name = "0.3.1-5.tar.gz";
    sha256 = "b89ed5b799b3b809302683366574722f8e51e7ccf28380d8ed966c246b3b0004";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest python3Packages.pytest-mock ];
  propagatedBuildInputs = [ ament-index-python python3Packages.lxml ];

  meta = {
    description = "Implementation of the NoDL API in Python.";
    license = with lib.licenses; [ asl20 ];
  };
}

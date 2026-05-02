
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-mypy";
  version = "0.20.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_mypy/0.20.5-3.tar.gz";
    name = "0.20.5-3.tar.gz";
    sha256 = "c6d730a31acf54295e04e98f5c67f55a44495dd6e9cd5a2a250f81323d020b9d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint python3Packages.pytest python3Packages.pytest-mock ];
  propagatedBuildInputs = [ python3Packages.mypy ];

  meta = {
    description = "Support for mypy static type checking in ament.";
    license = with lib.licenses; [ asl20 ];
  };
}

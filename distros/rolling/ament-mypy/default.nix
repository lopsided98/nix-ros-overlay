
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-mypy";
  version = "0.16.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_mypy/0.16.3-1.tar.gz";
    name = "0.16.3-1.tar.gz";
    sha256 = "daf5b2d5ccf6049016a276e99ef1e9c114f6d42c3456cd00d86e4469066ba2ab";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.mypy ];

  meta = {
    description = ''Support for mypy static type checking in ament.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-dashing-cross-compile";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-tooling/cross_compile-release/archive/release/dashing/cross_compile/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "f66e276fa572d67631b97164b505fee50c79e407637e9046519b41d0e522b098";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.docker ];

  meta = {
    description = ''A cross compilation tool for ROS 2 packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

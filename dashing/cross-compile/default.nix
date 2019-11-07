
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, pythonPackages, ament-pep257, python3Packages, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-cross-compile";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-tooling/cross_compile-release/archive/release/dashing/cross_compile/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "2eb09113a9892f60b8f6c0af4436d1a1f9e557c63c8ed0f48213fad69cb9bbdb";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.docker ];
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ python3Packages.docker ];

  meta = {
    description = ''A cross compilation tool for ROS 2 packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

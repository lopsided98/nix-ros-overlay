
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-dashing-cross-compile";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-tooling/cross_compile-release/archive/release/dashing/cross_compile/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "2eb09113a9892f60b8f6c0af4436d1a1f9e557c63c8ed0f48213fad69cb9bbdb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.docker ];

  meta = {
    description = ''A cross compilation tool for ROS 2 packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

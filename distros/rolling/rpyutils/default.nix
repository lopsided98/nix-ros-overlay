
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-rpyutils";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rpyutils-release/archive/release/rolling/rpyutils/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "a770d60b045c419471691435fc40573862241a8bf0aec8f02afefc8590e46b4e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "Package containing various utility types and functions for Python";
    license = with lib.licenses; [ asl20 ];
  };
}

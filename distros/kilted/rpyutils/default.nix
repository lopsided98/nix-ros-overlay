
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-rpyutils";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rpyutils-release/archive/release/kilted/rpyutils/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "3232f835bcadc1d091ffb9afdfcd0af6f2ec75e95fa1cd0e45c5fd837702b54c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "Package containing various utility types and functions for Python";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-rpyutils";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rpyutils-release/archive/release/rolling/rpyutils/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "8d5df80b131d8e2d00005f43eba81d74267832dee12bbd735f4db71fcb72f260";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];

  meta = {
    description = ''Package containing various utility types and functions for Python'';
    license = with lib.licenses; [ asl20 ];
  };
}

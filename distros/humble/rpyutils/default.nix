
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-humble-rpyutils";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rpyutils-release/archive/release/humble/rpyutils/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "482199dbf2de60bfb040c1c411b6cb83d332616a52395cfe39375c75fe5ac70a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "Package containing various utility types and functions for Python";
    license = with lib.licenses; [ asl20 ];
  };
}

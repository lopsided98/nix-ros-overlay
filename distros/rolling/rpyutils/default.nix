
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-rpyutils";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rpyutils-release/archive/release/rolling/rpyutils/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "2a5d6e360679ab452391cfbcc8c2d6348f6e7b91e5d8b1629e112c957bf2cf3b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];

  meta = {
    description = ''Package containing various utility types and functions for Python'';
    license = with lib.licenses; [ asl20 ];
  };
}

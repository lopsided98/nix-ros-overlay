
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, pythonPackages }:
buildRosPackage {
  pname = "ros-jazzy-rpyutils";
  version = "0.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rpyutils-release/archive/release/jazzy/rpyutils/0.4.1-3.tar.gz";
    name = "0.4.1-3.tar.gz";
    sha256 = "1f291e9c13830ab9f11960b6fb1d2c72b6dbf830088fc1814e43f5fe47e65ad1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];

  meta = {
    description = "Package containing various utility types and functions for Python";
    license = with lib.licenses; [ asl20 ];
  };
}

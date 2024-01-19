
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-rpyutils";
  version = "0.3.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rpyutils-release/archive/release/iron/rpyutils/0.3.2-3.tar.gz";
    name = "0.3.2-3.tar.gz";
    sha256 = "bfc70936e4b9c42d3b082bb9442e2260b6089f3cfb920f3b42d37cd47b98ce39";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];

  meta = {
    description = ''Package containing various utility types and functions for Python'';
    license = with lib.licenses; [ asl20 ];
  };
}

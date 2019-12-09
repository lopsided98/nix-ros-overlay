
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pep257, pythonPackages, ament-flake8 }:
buildRosPackage {
  pname = "ros-crystal-ament-index-python";
  version = "0.5.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/crystal/ament_index_python/0.5.1-0.tar.gz";
    name = "0.5.1-0.tar.gz";
    sha256 = "2c72c61f27599e5d25900d22ad6e70116552e5eea1570e00b519b5b2d730a97e";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-pep257 ];

  meta = {
    description = ''Python API to access the ament resource index.'';
    license = with lib.licenses; [ asl20 ];
  };
}

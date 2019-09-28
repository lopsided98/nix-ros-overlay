
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, ament-flake8, ament-pep257 }:
buildRosPackage {
  pname = "ros-dashing-ament-index-python";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/dashing/ament_index_python/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "d8cd8e19f0ac6fe51d2f9f4c53fe67079450714aeaf16ef64e6e30499b1a44d6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 pythonPackages.pytest ament-pep257 ];

  meta = {
    description = ''Python API to access the ament resource index.'';
    license = with lib.licenses; [ asl20 ];
  };
}

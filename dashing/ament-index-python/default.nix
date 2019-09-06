
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, ament-flake8, ament-pep257 }:
buildRosPackage {
  pname = "ros-dashing-ament-index-python";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/dashing/ament_index_python/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "1bdc566f704c5a71b38c4d85d163f27c12dd6cdb81e483db8bdbaa5172921eea";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 pythonPackages.pytest ament-pep257 ];

  meta = {
    description = ''Python API to access the ament resource index.'';
    license = with lib.licenses; [ asl20 ];
  };
}

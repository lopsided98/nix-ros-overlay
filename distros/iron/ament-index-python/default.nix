
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-ament-index-python";
  version = "1.5.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/iron/ament_index_python/1.5.2-4.tar.gz";
    name = "1.5.2-4.tar.gz";
    sha256 = "bcf0ba299d11e78c77e62b24e011dd0c810c9a60fb1f7d19a97119f0da508875";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''Python API to access the ament resource index.'';
    license = with lib.licenses; [ asl20 ];
  };
}

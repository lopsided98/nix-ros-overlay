
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-rtabmap-python";
  version = "0.21.2-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/iron/rtabmap_python/0.21.2-1.tar.gz";
    name = "0.21.2-1.tar.gz";
    sha256 = "a89c0903fa1cccce7df6cdf4bfc6832b8645ac3d755ec20f8d63379722f87c1e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''RTAB-Map's python package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

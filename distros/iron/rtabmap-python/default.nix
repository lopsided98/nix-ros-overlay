
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-rtabmap-python";
  version = "0.21.5-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/iron/rtabmap_python/0.21.5-1.tar.gz";
    name = "0.21.5-1.tar.gz";
    sha256 = "d3415cd87f066428f3a2d2febd2db9334de19e5f1f1ee3de80e60a4e6baa90b4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = "RTAB-Map's python package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

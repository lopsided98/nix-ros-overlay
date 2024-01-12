
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-rtabmap-python";
  version = "0.21.3-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_python/0.21.3-1.tar.gz";
    name = "0.21.3-1.tar.gz";
    sha256 = "66e58bf52879b517c88d1fcb60df29a00188745fcc249cdb6b622ded168b66fa";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''RTAB-Map's python package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-rtabmap-python";
  version = "0.21.4-r2";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_python/0.21.4-2.tar.gz";
    name = "0.21.4-2.tar.gz";
    sha256 = "027c9cb797609a5e04adbe64282cdb841434535360c9ef95002b6d4f37d07154";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = "RTAB-Map's python package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

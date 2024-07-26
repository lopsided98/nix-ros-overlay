
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-rtabmap-python";
  version = "0.21.5-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_python/0.21.5-1.tar.gz";
    name = "0.21.5-1.tar.gz";
    sha256 = "438a291c4f3cea8d75f889fb26848f625992b0b5009054e909b05e465b6690ba";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = "RTAB-Map's python package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

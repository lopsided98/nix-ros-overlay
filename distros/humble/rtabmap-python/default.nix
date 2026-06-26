
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-humble-rtabmap-python";
  version = "0.23.7-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_python/0.23.7-1.tar.gz";
    name = "0.23.7-1.tar.gz";
    sha256 = "fa158e238d1bcfe3590ecbe1a4904ca1a8e5a9ca0b2333323f142c47da52520a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];

  meta = {
    description = "RTAB-Map's python package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

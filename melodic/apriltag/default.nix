
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-melodic-apriltag";
  version = "3.1.0-r1";

  src = fetchurl {
    url = https://github.com/AprilRobotics/apriltag-release/archive/release/melodic/apriltag/3.1.0-1.tar.gz;
    sha256 = "d4617c7e9e07f8f35b2c1cb4e41c3dbe3b4be42dd00a78f5072faa62cce8cfd0";
  };

  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AprilTag detector library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

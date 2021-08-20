
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-apriltag";
  version = "3.1.5-r1";

  src = fetchurl {
    url = "https://github.com/AprilRobotics/apriltag-release/archive/release/noetic/apriltag/3.1.5-1.tar.gz";
    name = "3.1.5-1.tar.gz";
    sha256 = "85004181ebc6401c30c0c43a0206c5d870c75d9a7b5810b8d1268db60b0f3e01";
  };

  buildType = "cmake";
  buildInputs = [ python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AprilTag detector library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

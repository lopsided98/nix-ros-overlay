
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-apriltag";
  version = "3.1.6-r1";

  src = fetchurl {
    url = "https://github.com/AprilRobotics/apriltag-release/archive/release/noetic/apriltag/3.1.6-1.tar.gz";
    name = "3.1.6-1.tar.gz";
    sha256 = "5e1ab4f3dc574ade6e959333fbbb58f5122cf3a4e6a7f450090ef82f77dea27a";
  };

  buildType = "cmake";
  buildInputs = [ python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AprilTag detector library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

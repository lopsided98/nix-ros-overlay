
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-kinetic-apriltag";
  version = "3.1.1-r1";

  src = fetchurl {
    url = https://github.com/AprilRobotics/apriltag-release/archive/release/kinetic/apriltag/3.1.1-1.tar.gz;
    sha256 = "0b64e967a83afcfcce3f5e71d752a63d1306491bbdbdc46e4e704103c21f5537";
  };

  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AprilTag detector library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

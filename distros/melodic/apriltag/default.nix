
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-melodic-apriltag";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/AprilRobotics/apriltag-release/archive/release/melodic/apriltag/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "edeca6ffd2d5da48a525fd278afb41a43d2cf3e0290dadf71bce62620f4ebf9d";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AprilTag detector library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-melodic-apriltag";
  version = "3.1.6-r1";

  src = fetchurl {
    url = "https://github.com/AprilRobotics/apriltag-release/archive/release/melodic/apriltag/3.1.6-1.tar.gz";
    name = "3.1.6-1.tar.gz";
    sha256 = "05db2d6bcfd95576934394d1a48ec40d28db5dff78e44ecdf11da740c48ddd44";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AprilTag detector library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

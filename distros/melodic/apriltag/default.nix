
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, opencv }:
buildRosPackage {
  pname = "ros-melodic-apriltag";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/AprilRobotics/apriltag-release/archive/release/melodic/apriltag/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "178768b9e7b4523d3c4bd5b6974618fcdad4948cd1653264a0cfe90e4f114f9c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ opencv ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AprilTag detector library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

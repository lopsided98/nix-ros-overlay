
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-melodic-apriltag";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/AprilRobotics/apriltag-release/archive/release/melodic/apriltag/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "99dbed4dcbf548582e54acc506bf55f4918c2fdf3a0682716b4a400074cb533c";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AprilTag detector library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

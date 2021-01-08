
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-dashing-apriltag";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/AprilRobotics/apriltag-release/archive/release/dashing/apriltag/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "44d532046b20227706f721f7e21729fdc7bbf397f74c7f180055feaced1e6238";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AprilTag detector library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

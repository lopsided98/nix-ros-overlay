
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, opencv, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-apriltag";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/AprilRobotics/apriltag-release/archive/release/noetic/apriltag/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "aa4d2209785b7a6a2acdd86d1939d886efd3a7ddbc5401d1e0d4f67de6a4ac45";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3Packages.numpy ];
  checkInputs = [ opencv opencv.cxxdev ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AprilTag detector library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

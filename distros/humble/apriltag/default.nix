
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, opencv, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-apriltag";
  version = "3.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag-release/archive/release/humble/apriltag/3.4.2-1.tar.gz";
    name = "3.4.2-1.tar.gz";
    sha256 = "a63342ef70102af9b5f11e8cb1f0829d18778fdbfcf9bf70f13449555ff62bae";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.numpy ];
  checkInputs = [ opencv opencv.cxxdev ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "AprilTag detector library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

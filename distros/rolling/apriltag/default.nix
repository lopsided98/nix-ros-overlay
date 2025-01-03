
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, opencv, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-apriltag";
  version = "3.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag-release/archive/release/rolling/apriltag/3.4.2-1.tar.gz";
    name = "3.4.2-1.tar.gz";
    sha256 = "3c3a03ed6163a2cd6de519b0fa8bb08f83840ce004c6ddaf940d333dea70c9f6";
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

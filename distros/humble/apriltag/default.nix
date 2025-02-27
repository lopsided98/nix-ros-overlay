
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, opencv, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-apriltag";
  version = "3.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag-release/archive/release/humble/apriltag/3.4.3-1.tar.gz";
    name = "3.4.3-1.tar.gz";
    sha256 = "0c04eafb8eafacc5fb6560362e04c345a825b1ae0a37cbeaef7ccce227670ef7";
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

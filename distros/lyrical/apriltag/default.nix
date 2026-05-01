
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, opencv, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-apriltag";
  version = "3.4.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag-release/archive/release/lyrical/apriltag/3.4.5-3.tar.gz";
    name = "3.4.5-3.tar.gz";
    sha256 = "a6c3c6f4d69e2d951dfff11fe82c5770efafa193892d99106a3bb9da7bc87d97";
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

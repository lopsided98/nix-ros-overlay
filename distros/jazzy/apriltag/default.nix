
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, opencv, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-apriltag";
  version = "3.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag-release/archive/release/jazzy/apriltag/3.4.2-1.tar.gz";
    name = "3.4.2-1.tar.gz";
    sha256 = "1451042831b5b0742b24ffb62dd3a97448dfa3a94219b7f912b17f11a7258342";
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


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, wxGTK, suitesparse, libpcap, catkin, ffmpeg, assimp, libusb1, octomap, libjpeg, eigen, zlib, freeglut, cmake, opencv3, libudev }:
buildRosPackage {
  pname = "ros-melodic-mrpt1";
  version = "1.5.7-r6";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt1-release/archive/release/melodic/mrpt1/1.5.7-6.tar.gz;
    sha256 = "b450ce4344eb9f5015268ff6fa680f25579f1f5bfcc7779d2cd2cfe96f109d7f";
  };

  buildInputs = [ wxGTK suitesparse libpcap assimp ffmpeg libusb1 libjpeg octomap eigen zlib freeglut opencv3 libudev ];
  propagatedBuildInputs = [ wxGTK suitesparse libpcap catkin assimp ffmpeg libusb1 libjpeg octomap eigen zlib freeglut opencv3 libudev ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 1.5.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

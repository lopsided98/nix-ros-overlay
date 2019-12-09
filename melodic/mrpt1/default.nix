
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, assimp, ffmpeg, octomap, wxGTK, pythonPackages, catkin, libjpeg, cmake, suitesparse, libpcap, freeglut, eigen, python, zlib, opencv3, libusb1, libudev }:
buildRosPackage {
  pname = "ros-melodic-mrpt1";
  version = "1.5.9-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt1-release/archive/release/melodic/mrpt1/1.5.9-1.tar.gz";
    name = "1.5.9-1.tar.gz";
    sha256 = "3b46d8c2174663f750de2c3c6533f2284fdd117b1e9f3b238f986f7363f0fe26";
  };

  buildType = "cmake";
  buildInputs = [ pythonPackages.numpy boost assimp ffmpeg octomap wxGTK libjpeg libpcap suitesparse freeglut eigen python zlib opencv3 libusb1 libudev ];
  propagatedBuildInputs = [ pythonPackages.numpy boost assimp ffmpeg octomap wxGTK catkin libjpeg suitesparse libpcap freeglut eigen python zlib opencv3 libusb1 libudev ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 1.5.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

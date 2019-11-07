
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, wxGTK, suitesparse, boost, libpcap, catkin, pythonPackages, ffmpeg, assimp, libusb1, octomap, libjpeg, eigen, zlib, freeglut, cmake, opencv3, libudev }:
buildRosPackage {
  pname = "ros-melodic-mrpt1";
  version = "1.5.9-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt1-release/archive/release/melodic/mrpt1/1.5.9-1.tar.gz";
    name = "1.5.9-1.tar.gz";
    sha256 = "3b46d8c2174663f750de2c3c6533f2284fdd117b1e9f3b238f986f7363f0fe26";
  };

  buildType = "cmake";
  buildInputs = [ python wxGTK pythonPackages.numpy suitesparse boost libpcap assimp ffmpeg libusb1 libjpeg octomap eigen zlib freeglut opencv3 libudev ];
  propagatedBuildInputs = [ python wxGTK pythonPackages.numpy suitesparse boost libpcap catkin ffmpeg assimp libusb1 octomap libjpeg eigen zlib freeglut opencv3 libudev ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 1.5.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

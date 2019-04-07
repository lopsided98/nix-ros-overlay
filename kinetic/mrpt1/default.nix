
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, wxGTK, suitesparse, boost, libpcap, catkin, pythonPackages, ffmpeg, assimp, libusb1, octomap, libjpeg, eigen, zlib, freeglut, cmake, opencv3, libudev }:
buildRosPackage {
  pname = "ros-kinetic-mrpt1";
  version = "1.5.7-r4";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt1-release/archive/release/kinetic/mrpt1/1.5.7-4.tar.gz;
    sha256 = "d1f36282f236ae99970625082b19ae8fac1ed7f333e4712f45526263f664579b";
  };

  buildInputs = [ python wxGTK pythonPackages.numpy suitesparse boost libpcap assimp ffmpeg libusb1 libjpeg octomap eigen zlib freeglut opencv3 libudev ];
  propagatedBuildInputs = [ python wxGTK pythonPackages.numpy suitesparse boost libpcap catkin assimp ffmpeg libusb1 libjpeg octomap eigen zlib freeglut opencv3 libudev ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 1.5.x'';
    #license = lib.licenses.BSD;
  };
}

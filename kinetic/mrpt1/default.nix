
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, wxGTK, suitesparse, boost, libpcap, catkin, pythonPackages, ffmpeg, assimp, libusb1, octomap, libjpeg, eigen, zlib, freeglut, cmake, opencv3, libudev }:
buildRosPackage {
  pname = "ros-kinetic-mrpt1";
  version = "1.5.7-r5";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt1-release/archive/release/kinetic/mrpt1/1.5.7-5.tar.gz;
    sha256 = "c6c98b02f21b0ba8d75d311db973e0a450e73c0d816a7c57282f411a0cc8396e";
  };

  buildInputs = [ python wxGTK pythonPackages.numpy suitesparse boost libpcap assimp ffmpeg libusb1 libjpeg octomap eigen zlib freeglut opencv3 libudev ];
  propagatedBuildInputs = [ python wxGTK pythonPackages.numpy suitesparse boost libpcap catkin assimp ffmpeg libusb1 libjpeg octomap eigen zlib freeglut opencv3 libudev ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 1.5.x'';
    #license = lib.licenses.BSD;
  };
}

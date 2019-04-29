
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, wxGTK, suitesparse, boost, libpcap, catkin, pythonPackages, ffmpeg, assimp, libusb1, octomap, libjpeg, eigen, zlib, freeglut, cmake, opencv3, libudev }:
buildRosPackage {
  pname = "ros-melodic-mrpt1";
  version = "1.5.7-r7";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt1-release/archive/release/melodic/mrpt1/1.5.7-7.tar.gz;
    sha256 = "16a64b1d70cdcd12cf1a716251006efad53b063aee7086999509efcab0c737c8";
  };

  buildInputs = [ python wxGTK pythonPackages.numpy suitesparse boost libpcap assimp ffmpeg libusb1 libjpeg octomap eigen zlib freeglut opencv3 libudev ];
  propagatedBuildInputs = [ python wxGTK pythonPackages.numpy suitesparse boost libpcap catkin assimp ffmpeg libusb1 libjpeg octomap eigen zlib freeglut opencv3 libudev ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 1.5.x'';
    #license = lib.licenses.BSD;
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, wxGTK, suitesparse, boost, libpcap, catkin, pythonPackages, ffmpeg, assimp, libusb1, octomap, libjpeg, eigen, zlib, freeglut, cmake, opencv3, libudev }:
buildRosPackage {
  pname = "ros-kinetic-mrpt1";
  version = "1.5.8";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt1-release/archive/release/kinetic/mrpt1/1.5.8-0.tar.gz;
    sha256 = "7e8dc91a1c2a5802a2658753ab3426b8822795a0546d663af4e204a0a512a363";
  };

  buildInputs = [ python wxGTK pythonPackages.numpy suitesparse boost libpcap assimp ffmpeg libusb1 libjpeg octomap eigen zlib freeglut opencv3 libudev ];
  propagatedBuildInputs = [ python wxGTK pythonPackages.numpy suitesparse boost libpcap catkin assimp ffmpeg libusb1 libjpeg octomap eigen zlib freeglut opencv3 libudev ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 1.5.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

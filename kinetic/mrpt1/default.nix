
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, assimp, ffmpeg, octomap, wxGTK, pythonPackages, catkin, libjpeg, cmake, suitesparse, libpcap, freeglut, eigen, python, zlib, opencv3, libusb1, libudev }:
buildRosPackage {
  pname = "ros-kinetic-mrpt1";
  version = "1.5.9-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt1-release/archive/release/kinetic/mrpt1/1.5.9-1.tar.gz";
    name = "1.5.9-1.tar.gz";
    sha256 = "f66558ec8c0ac5eab8341371d217c3a10d07ff9bb8c1b51f6c40e3fcafad79b2";
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

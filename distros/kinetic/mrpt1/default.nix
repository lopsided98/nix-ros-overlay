
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, cmake, eigen, ffmpeg, freeglut, libjpeg, libpcap, libudev, libusb1, octomap, opencv3, python, pythonPackages, suitesparse, wxGTK, zlib }:
buildRosPackage {
  pname = "ros-kinetic-mrpt1";
  version = "1.5.9-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt1-release/archive/release/kinetic/mrpt1/1.5.9-1.tar.gz";
    name = "1.5.9-1.tar.gz";
    sha256 = "f66558ec8c0ac5eab8341371d217c3a10d07ff9bb8c1b51f6c40e3fcafad79b2";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ assimp boost catkin eigen ffmpeg freeglut libjpeg libpcap libudev libusb1 octomap opencv3 python pythonPackages.numpy suitesparse wxGTK zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 1.5.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

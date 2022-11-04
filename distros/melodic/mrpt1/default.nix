
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, cmake, eigen, ffmpeg, freeglut, libjpeg, libpcap, libusb1, octomap, opencv, python, pythonPackages, suitesparse, udev, wxGTK, zlib }:
buildRosPackage {
  pname = "ros-melodic-mrpt1";
  version = "1.5.9-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt1-release/archive/release/melodic/mrpt1/1.5.9-1.tar.gz";
    name = "1.5.9-1.tar.gz";
    sha256 = "3b46d8c2174663f750de2c3c6533f2284fdd117b1e9f3b238f986f7363f0fe26";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ assimp boost catkin eigen ffmpeg freeglut libjpeg libpcap libusb1 octomap opencv python pythonPackages.numpy suitesparse udev wxGTK zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 1.5.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

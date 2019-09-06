
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, wxGTK, suitesparse, libpcap, assimp, ffmpeg, libusb1, libjpeg, eigen, zlib, freeglut, cmake, opencv3, libudev }:
buildRosPackage {
  pname = "ros-crystal-mrpt2";
  version = "1.9.9";

  src = fetchurl {
    url = https://github.com/mrpt-ros2-pkg-release/mrpt2-release/archive/release/crystal/mrpt2/1.9.9-0.tar.gz;
    sha256 = "f53bc01e9cecf69776f34c50e4ca8e675327efca9f672b3cf5a4ef8ba5c2631d";
  };

  buildType = "cmake";
  buildInputs = [ wxGTK suitesparse libpcap assimp ffmpeg libusb1 libjpeg eigen zlib freeglut opencv3 libudev ];
  propagatedBuildInputs = [ wxGTK suitesparse libpcap assimp ffmpeg libusb1 libjpeg eigen zlib freeglut opencv3 libudev ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 2.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

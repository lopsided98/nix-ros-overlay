
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, ffmpeg, wxGTK, libjpeg, cmake, suitesparse, libpcap, freeglut, eigen, zlib, opencv3, libusb1, libudev }:
buildRosPackage {
  pname = "ros-crystal-mrpt2";
  version = "1.9.9";

  src = fetchurl {
    url = "https://github.com/mrpt-ros2-pkg-release/mrpt2-release/archive/release/crystal/mrpt2/1.9.9-0.tar.gz";
    name = "1.9.9-0.tar.gz";
    sha256 = "f53bc01e9cecf69776f34c50e4ca8e675327efca9f672b3cf5a4ef8ba5c2631d";
  };

  buildType = "cmake";
  buildInputs = [ assimp ffmpeg wxGTK libjpeg libpcap suitesparse freeglut eigen zlib opencv3 libusb1 libudev ];
  propagatedBuildInputs = [ assimp ffmpeg wxGTK libjpeg suitesparse libpcap freeglut eigen zlib opencv3 libusb1 libudev ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 2.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, eigen, ffmpeg, freeglut, libjpeg, libpcap, libudev, libusb1, opencv3, suitesparse, wxGTK, zlib }:
buildRosPackage {
  pname = "ros-melodic-mrpt2";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt2-release/archive/release/melodic/mrpt2/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "6966dec0c246e3ce50508a1892388e867b62e95876d677340cd337d87d225fe9";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ assimp eigen ffmpeg freeglut libjpeg libpcap libudev libusb1 opencv3 suitesparse wxGTK zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 2.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

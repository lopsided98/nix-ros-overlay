
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, eigen, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, libxrandr, libxxf86vm, mrpt-libbase, opencv, openni2, pkg-config, python3Packages, suitesparse, tinyxml-2, udev, wxGTK32, zlib }:
buildRosPackage {
  pname = "ros-humble-mrpt-libtclap";
  version = "2.15.17-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/humble/mrpt_libtclap/2.15.17-1.tar.gz";
    name = "2.15.17-1.tar.gz";
    sha256 = "c06e6f5e440c9abe2390285067e1c69ffac978d3948f132c403ea9e534597d41";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake eigen ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 libxrandr libxxf86vm mrpt-libbase opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 suitesparse tinyxml-2 udev wxGTK32 zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (tclap C++ library).
  This package contains: mrpt-tclap";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

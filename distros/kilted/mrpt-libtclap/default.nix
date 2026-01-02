
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, eigen, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libbase, opencv, openni2, pkg-config, python3Packages, suitesparse, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-kilted-mrpt-libtclap";
  version = "2.15.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/kilted/mrpt_libtclap/2.15.4-1.tar.gz";
    name = "2.15.4-1.tar.gz";
    sha256 = "edae60a5f338fad28f8ff293b50f9e8eae2d65d42f657491b674578dcd6c01f0";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake eigen ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 mrpt-libbase opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 suitesparse tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (tclap C++ library).
  This package contains: mrpt-tclap";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

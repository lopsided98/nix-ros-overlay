
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, eigen, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, libxrandr, libxxf86vm, mrpt-libbase, opencv, openni2, pkg-config, python3Packages, suitesparse, tinyxml-2, udev, wxGTK32, zlib }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-libtclap";
  version = "2.15.18-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/lyrical/mrpt_libtclap/2.15.18-1.tar.gz";
    name = "2.15.18-1.tar.gz";
    sha256 = "dc97073815a7cf6ff9a9a143efa88db9db6b334eaefd21a7b78794d9f315bb2a";
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

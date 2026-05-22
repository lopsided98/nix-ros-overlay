
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, eigen, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, libxrandr, libxxf86vm, mrpt-libbase, opencv, openni2, pkg-config, python3Packages, suitesparse, tinyxml-2, udev, wxGTK32, zlib }:
buildRosPackage {
  pname = "ros-humble-mrpt-libmath";
  version = "2.15.18-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/humble/mrpt_libmath/2.15.18-1.tar.gz";
    name = "2.15.18-1.tar.gz";
    sha256 = "686c64db6b14001ab7f78b0b4d13cd42cccf57cff32b2b88852034aace0d70e8";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 libxrandr libxxf86vm opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 tinyxml-2 udev wxGTK32 zlib ];
  propagatedBuildInputs = [ eigen mrpt-libbase suitesparse ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (math C++ libraries).
  This package contains: mrpt-math";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

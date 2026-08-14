
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, libxrandr, libxxf86vm, mrpt-libmaps, onetbb, opencv, openni2, pkg-config, python3Packages, tinyxml-2, udev, wxGTK32, zlib }:
buildRosPackage {
  pname = "ros-rolling-mrpt-libslam";
  version = "2.15.21-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/rolling/mrpt_libslam/2.15.21-1.tar.gz";
    name = "2.15.21-1.tar.gz";
    sha256 = "2e2abf40482a30c82d064ca46a4c7868324428c8a2f5455d1b5c1e5d3cdf0363";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 libxrandr libxxf86vm opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 tinyxml-2 udev wxGTK32 zlib ];
  propagatedBuildInputs = [ mrpt-libmaps onetbb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (slam/vision C++ libraries).
  This package contains: mrpt-slam, mrpt-vision";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

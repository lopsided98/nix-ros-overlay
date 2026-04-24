
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libmaps, onetbb, opencv, openni2, pkg-config, python3Packages, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-humble-mrpt-libslam";
  version = "2.15.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/humble/mrpt_libslam/2.15.14-1.tar.gz";
    name = "2.15.14-1.tar.gz";
    sha256 = "1e670f9781570432b7d8ba7f411d340a0950ac80516fffd9b2bb5b6cf098f259";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ mrpt-libmaps onetbb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (slam/vision C++ libraries).
  This package contains: mrpt-slam, mrpt-vision";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

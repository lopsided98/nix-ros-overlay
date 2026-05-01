
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libgui, mrpt-libmaps, mrpt-libslam, opencv, openni2, pkg-config, python3Packages, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-libhwdrivers";
  version = "2.15.14-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/lyrical/mrpt_libhwdrivers/2.15.14-3.tar.gz";
    name = "2.15.14-3.tar.gz";
    sha256 = "b0aece79ba5d2223a2471c7b8e669486fc2fa852076378aecb36ca327592f175";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ mrpt-libgui mrpt-libmaps mrpt-libslam ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (hwdrivers C++ libraries).
  This package contains: mrpt-hwdrivers, mrpt-comms";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

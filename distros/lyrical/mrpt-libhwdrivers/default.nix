
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, libxrandr, libxxf86vm, mrpt-libgui, mrpt-libmaps, mrpt-libslam, opencv, openni2, pkg-config, python3Packages, tinyxml-2, udev, wxGTK32, zlib }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-libhwdrivers";
  version = "2.15.17-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/lyrical/mrpt_libhwdrivers/2.15.17-2.tar.gz";
    name = "2.15.17-2.tar.gz";
    sha256 = "4a1c4d2739a889e931621d26c160aeafa5d7f281a672ec65cbc2f2f5038ecc8c";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 libxrandr libxxf86vm opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 tinyxml-2 udev wxGTK32 zlib ];
  propagatedBuildInputs = [ mrpt-libgui mrpt-libmaps mrpt-libslam ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (hwdrivers C++ libraries).
  This package contains: mrpt-hwdrivers, mrpt-comms";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

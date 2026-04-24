
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libgui, mrpt-libmaps, mrpt-libslam, opencv, openni2, pkg-config, python3Packages, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-libhwdrivers";
  version = "2.15.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/jazzy/mrpt_libhwdrivers/2.15.14-1.tar.gz";
    name = "2.15.14-1.tar.gz";
    sha256 = "e78719c46e94340b33f77e3f42a6be3baac90b60b84414399eb2fd9a7092b31d";
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

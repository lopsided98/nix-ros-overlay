
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libmaps, opencv, openni2, pkg-config, python3Packages, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-libnav";
  version = "2.15.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/jazzy/mrpt_libnav/2.15.12-1.tar.gz";
    name = "2.15.12-1.tar.gz";
    sha256 = "54bb9dcfe846557ee1d64f7623e7a84c93841a52bbe627c727dca38c466c2056";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ mrpt-libmaps ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (nav C++ libraries).
  This package contains: mrpt-nav, mrpt-kinematics";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

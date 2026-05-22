
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, libxrandr, libxxf86vm, mrpt-libopengl, mrpt-libposes, opencv, openni2, pkg-config, python3Packages, tinyxml-2, udev, wxGTK32, zlib }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-libobs";
  version = "2.15.18-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/lyrical/mrpt_libobs/2.15.18-1.tar.gz";
    name = "2.15.18-1.tar.gz";
    sha256 = "5b00b29aa328a8938b627e313708001f27dd8e8d01c0ccce6018aed8149fd9d9";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 libxrandr libxxf86vm opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 tinyxml-2 udev wxGTK32 zlib ];
  propagatedBuildInputs = [ mrpt-libopengl mrpt-libposes ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (obs C++ libraries).
  This package contains: mrpt-obs, mrpt-topography";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

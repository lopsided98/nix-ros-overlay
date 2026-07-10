
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, libxrandr, libxxf86vm, mrpt-libobs, octomap, opencv, openni2, pkg-config, python3Packages, tinyxml-2, udev, wxGTK32, zlib }:
buildRosPackage {
  pname = "ros-rolling-mrpt-libmaps";
  version = "2.15.19-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/rolling/mrpt_libmaps/2.15.19-1.tar.gz";
    name = "2.15.19-1.tar.gz";
    sha256 = "0c868c1351091d8a03e9b8e135f3704e52f30d15788832a8ee8a1d635de8e1ce";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 libxrandr libxxf86vm octomap opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 tinyxml-2 udev wxGTK32 zlib ];
  propagatedBuildInputs = [ mrpt-libobs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (maps C++ libraries).
  This package contains: mrpt-maps, mrpt-graphs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

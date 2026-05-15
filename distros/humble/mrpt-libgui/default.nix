
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, libxrandr, libxxf86vm, mrpt-libopengl, opencv, openni2, pkg-config, python3Packages, tinyxml-2, udev, wxGTK32, zlib }:
buildRosPackage {
  pname = "ros-humble-mrpt-libgui";
  version = "2.15.17-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/humble/mrpt_libgui/2.15.17-1.tar.gz";
    name = "2.15.17-1.tar.gz";
    sha256 = "d0292fbd9d555d3a966c2168fcbda4aad3503ca4c81149c422174d6f6c1c48c0";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake ffmpeg freeglut freenect libGL libGLU libjpeg libpcap libusb1 libxrandr libxxf86vm opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 tinyxml-2 udev wxGTK32 zlib ];
  propagatedBuildInputs = [ glfw3 mrpt-libopengl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (GUI C++ libraries).
  This package contains: mrpt-gui, nanogui";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

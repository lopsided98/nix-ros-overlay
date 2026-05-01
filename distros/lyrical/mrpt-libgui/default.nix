
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libopengl, opencv, openni2, pkg-config, python3Packages, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-libgui";
  version = "2.15.14-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/lyrical/mrpt_libgui/2.15.14-3.tar.gz";
    name = "2.15.14-3.tar.gz";
    sha256 = "c074a79b091c22a49f73aa0981758dc1aa94776792edb962e2c97cf466dec02b";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake ffmpeg freeglut freenect libGL libGLU libjpeg libpcap libusb1 opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ glfw3 mrpt-libopengl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (GUI C++ libraries).
  This package contains: mrpt-gui, nanogui";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

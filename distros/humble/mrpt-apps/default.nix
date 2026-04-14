
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libapps, mrpt-libnav, opencv, openni2, pkg-config, python3Packages, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-humble-mrpt-apps";
  version = "2.15.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/humble/mrpt_apps/2.15.12-1.tar.gz";
    name = "2.15.12-1.tar.gz";
    sha256 = "d8a591c079269b5d86733929f2bdfcbe4a557613ebef00ff4250ae1fd2b47677";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake assimp cmake ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ mrpt-libapps mrpt-libnav ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) applications";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libapps, mrpt-libnav, openni2, pkg-config, python3Packages, pythonPackages, ros-environment, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-humble-mrpt-apps";
  version = "2.14.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/humble/mrpt_apps/2.14.5-1.tar.gz";
    name = "2.14.5-1.tar.gz";
    sha256 = "cf2d0e9d9a5b77db64e369040a86008b88e84cad13d7deb564ad70bae5d4755c";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake assimp cmake ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 openni2 pkg-config python3Packages.pip pythonPackages.pybind11 ros-environment tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ mrpt-libapps mrpt-libnav ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) applications";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

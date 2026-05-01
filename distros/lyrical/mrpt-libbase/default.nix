
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, eigen, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, onetbb, opencv, openni2, pkg-config, python3Packages, suitesparse, tinyxml-2, udev, wxGTK32, xorg, zlib, zstd }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-libbase";
  version = "2.15.14-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/lyrical/mrpt_libbase/2.15.14-3.tar.gz";
    name = "2.15.14-3.tar.gz";
    sha256 = "0e918b252c6aa8c40c767b841b84d3b7f7a27233c04919d1741f76f124544e1f";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake eigen ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 onetbb opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 suitesparse tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib zstd ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (core C++ libraries).
  This package contains: mrpt-io, mrpt-serialization, mrpt-random, mrpt-system, mrpt-rtti, mrpt-containers, mrpt-typemeta, mrpt-core, mrpt-random, mrpt-config, mrpt-expr";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

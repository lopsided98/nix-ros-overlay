
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, eigen, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, libxrandr, libxxf86vm, onetbb, opencv, openni2, pkg-config, python3Packages, suitesparse, tinyxml-2, udev, wxGTK32, zlib, zstd }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-libbase";
  version = "2.15.17-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/lyrical/mrpt_libbase/2.15.17-2.tar.gz";
    name = "2.15.17-2.tar.gz";
    sha256 = "ecf76f45e31fec942c0a649133867984c69680a288c8907fc057c04fc802aadb";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake eigen ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 libxrandr libxxf86vm onetbb opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 suitesparse tinyxml-2 udev wxGTK32 zlib zstd ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (core C++ libraries).
  This package contains: mrpt-io, mrpt-serialization, mrpt-random, mrpt-system, mrpt-rtti, mrpt-containers, mrpt-typemeta, mrpt-core, mrpt-random, mrpt-config, mrpt-expr";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

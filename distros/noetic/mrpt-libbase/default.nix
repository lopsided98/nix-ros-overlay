
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, cv-bridge, eigen, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, octomap, opencv, openni2, pkg-config, python3Packages, pythonPackages, ros-environment, rosbag-storage, roscpp, suitesparse, tbb_2021_11, tf2-geometry-msgs, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-noetic-mrpt-libbase";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_ros-release/archive/release/noetic/mrpt_libbase/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "0e470baeb7c179c0ba7206bec7b339e1abc33586e38c96e032f125c6e41dddc2";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake cv-bridge eigen ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 octomap opencv opencv.cxxdev openni2 pkg-config python3Packages.pip pythonPackages.pybind11 ros-environment rosbag-storage roscpp suitesparse tbb_2021_11 tf2-geometry-msgs tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (core C++ libraries).
  This package contains: mrpt-io, mrpt-serialization, mrpt-random, mrpt-system, mrpt-rtti, mrpt-containers, mrpt-typemeta, mrpt-core, mrpt-random, mrpt-config, mrpt-expr";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

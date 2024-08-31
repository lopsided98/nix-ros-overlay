
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, cv-bridge, eigen, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, octomap, opencv, openni2, pkg-config, python3Packages, pythonPackages, rclcpp, ros-environment, rosbag2-storage, suitesparse, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-libtclap";
  version = "2.13.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/jazzy/mrpt_libtclap/2.13.7-3.tar.gz";
    name = "2.13.7-3.tar.gz";
    sha256 = "78b1a25bc8d2ae2b6bdad71e2969ef2283464a14192e9e8ae3f19e6e22d8730d";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake assimp cmake cv-bridge eigen ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 octomap opencv opencv.cxxdev openni2 pkg-config python3Packages.pip pythonPackages.pybind11 rclcpp ros-environment rosbag2-storage suitesparse tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (tclap C++ library).
  This package contains: mrpt-tclap";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

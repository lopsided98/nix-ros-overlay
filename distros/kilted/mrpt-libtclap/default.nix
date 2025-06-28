
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, cv-bridge, eigen, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libbase, octomap, opencv, openni2, pkg-config, python3Packages, rclcpp, ros-environment, rosbag2-storage, suitesparse, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-kilted-mrpt-libtclap";
  version = "2.14.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/kilted/mrpt_libtclap/2.14.11-1.tar.gz";
    name = "2.14.11-1.tar.gz";
    sha256 = "0e0da24382165418404c6e8dcdcc1b2931c9f07bab382f034d77105d167dab1f";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake assimp cmake cv-bridge eigen ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 mrpt-libbase octomap opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 rclcpp ros-environment rosbag2-storage suitesparse tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (tclap C++ library).
  This package contains: mrpt-tclap";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

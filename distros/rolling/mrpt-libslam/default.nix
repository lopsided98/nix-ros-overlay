
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, cv-bridge, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libmaps, octomap, opencv, openni2, pkg-config, python3Packages, pythonPackages, rclcpp, ros-environment, rosbag2-storage, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-rolling-mrpt-libslam";
  version = "2.13.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/rolling/mrpt_libslam/2.13.7-3.tar.gz";
    name = "2.13.7-3.tar.gz";
    sha256 = "093631c92a31eb768a6f689d3c96f3ee9c60365929b87cfe6db14a057160984a";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake assimp cmake cv-bridge ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 octomap opencv opencv.cxxdev openni2 pkg-config python3Packages.pip pythonPackages.pybind11 rclcpp ros-environment rosbag2-storage tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ mrpt-libmaps ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (slam/vision C++ libraries).
  This package contains: mrpt-slam, mrpt-vision";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

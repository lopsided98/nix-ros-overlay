
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, cv-bridge, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libmaps, octomap, opencv, openni2, pkg-config, python3Packages, rclcpp, ros-environment, rosbag2-storage, tbb_2021_11, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-rolling-mrpt-libslam";
  version = "2.14.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/rolling/mrpt_libslam/2.14.7-1.tar.gz";
    name = "2.14.7-1.tar.gz";
    sha256 = "06249b0628199ad0a5b18c29d8c41de0e6d55a99512e84ce3651170ef8a5ce02";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake assimp cmake cv-bridge ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 octomap opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 rclcpp ros-environment rosbag2-storage tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ mrpt-libmaps tbb_2021_11 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (slam/vision C++ libraries).
  This package contains: mrpt-slam, mrpt-vision";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

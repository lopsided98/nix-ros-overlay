
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, cv-bridge, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libopengl, octomap, opencv, openni2, pkg-config, python3Packages, rclcpp, ros-environment, rosbag2-storage, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-rolling-mrpt-libgui";
  version = "2.14.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/rolling/mrpt_libgui/2.14.11-1.tar.gz";
    name = "2.14.11-1.tar.gz";
    sha256 = "075d2b86197e944f538f89db0d4af136784aa79ca1ed3f52199fed5c6c713ae7";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake assimp cmake cv-bridge ffmpeg freeglut freenect libGL libGLU libjpeg libpcap libusb1 octomap opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 rclcpp ros-environment rosbag2-storage tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ glfw3 mrpt-libopengl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (GUI C++ libraries).
  This package contains: mrpt-gui, nanogui";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

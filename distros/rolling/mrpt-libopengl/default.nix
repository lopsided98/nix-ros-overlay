
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, cv-bridge, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libbase, mrpt-libposes, octomap, opencv, openni2, pkg-config, python3Packages, pythonPackages, rclcpp, ros-environment, rosbag2-storage, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-rolling-mrpt-libopengl";
  version = "2.14.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/rolling/mrpt_libopengl/2.14.2-1.tar.gz";
    name = "2.14.2-1.tar.gz";
    sha256 = "76253872f5f3e274aea7486f07848e8dc50cd29da908a1060442f8ec5f16e5c3";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake assimp cmake cv-bridge ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 octomap opencv opencv.cxxdev openni2 pkg-config python3Packages.pip pythonPackages.pybind11 rclcpp ros-environment rosbag2-storage tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ mrpt-libbase mrpt-libposes ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (opengl/img C++ libraries).
  This package contains: mrpt-opengl, mrpt-img";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

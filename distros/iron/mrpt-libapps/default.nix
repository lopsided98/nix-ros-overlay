
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, cv-bridge, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libgui, mrpt-libhwdrivers, mrpt-libmaps, mrpt-libslam, mrpt-libtclap, octomap, opencv, openni2, pkg-config, python3Packages, pythonPackages, rclcpp, ros-environment, rosbag2-storage, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-iron-mrpt-libapps";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/iron/mrpt_libapps/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "528d4fc1b8a990ad271be34694022d220bb42c8735d434d8c76de70c85b01c61";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake assimp cmake cv-bridge ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 octomap opencv opencv.cxxdev openni2 pkg-config python3Packages.pip pythonPackages.pybind11 rclcpp ros-environment rosbag2-storage tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ mrpt-libgui mrpt-libhwdrivers mrpt-libmaps mrpt-libslam mrpt-libtclap ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (apps C++ libraries).
  This package contains: mrpt-apps lib, mrpt-graphslam";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

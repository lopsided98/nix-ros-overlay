
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, cv-bridge, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libapps, mrpt-libgui, mrpt-libnav, mrpt-libslam, octomap, opencv, openni2, pkg-config, python3Packages, pythonPackages, rclcpp, ros-environment, rosbag2-storage, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-humble-python-mrpt";
  version = "2.13.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/python_mrpt_ros-release/archive/release/humble/python_mrpt/2.13.7-1.tar.gz";
    name = "2.13.7-1.tar.gz";
    sha256 = "f82b897d6164f1b8f343b1d46a1eaf19cf290c5d3c8f98e1c26484262a621fd4";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake assimp cmake cv-bridge ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 octomap opencv opencv.cxxdev openni2 pkg-config python3Packages.pip pythonPackages.pybind11 rclcpp ros-environment rosbag2-storage tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ mrpt-libapps mrpt-libgui mrpt-libnav mrpt-libslam ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Python wrapper for Mobile Robot Programming Toolkit (MRPT) libraries";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, cv-bridge, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libapps, mrpt-libgui, mrpt-libnav, mrpt-libslam, octomap, opencv, openni2, pkg-config, python3Packages, pythonPackages, rclcpp, ros-environment, rosbag2-storage, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-iron-python-mrpt";
  version = "2.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/python_mrpt_ros-release/archive/release/iron/python_mrpt/2.14.0-1.tar.gz";
    name = "2.14.0-1.tar.gz";
    sha256 = "1ac2ba1c125a473562d4d4ad867d2fac9b0fcc990a950fd43f0d51080b024459";
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

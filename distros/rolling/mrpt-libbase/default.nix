
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, cv-bridge, eigen, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, octomap, opencv, openni2, pkg-config, python3Packages, rclcpp, ros-environment, rosbag2-storage, suitesparse, tbb_2021_11, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-rolling-mrpt-libbase";
  version = "2.14.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/rolling/mrpt_libbase/2.14.15-1.tar.gz";
    name = "2.14.15-1.tar.gz";
    sha256 = "f360596dadf2873bce83e02635b9f3cabdaf84b6e721381f164b5f4ff12263ff";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake assimp cmake cv-bridge eigen ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 octomap opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 rclcpp ros-environment rosbag2-storage suitesparse tbb_2021_11 tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (core C++ libraries).
  This package contains: mrpt-io, mrpt-serialization, mrpt-random, mrpt-system, mrpt-rtti, mrpt-containers, mrpt-typemeta, mrpt-core, mrpt-random, mrpt-config, mrpt-expr";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

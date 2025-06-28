
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, cv-bridge, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libobs, octomap, opencv, openni2, pkg-config, python3Packages, rclcpp, ros-environment, rosbag2-storage, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-libmaps";
  version = "2.14.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/jazzy/mrpt_libmaps/2.14.9-1.tar.gz";
    name = "2.14.9-1.tar.gz";
    sha256 = "2fe0a2daaa1bf9d468d18da61ba7194423de79a3992656bd07a0a74ed31c0925";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake assimp cmake cv-bridge ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 octomap opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 rclcpp ros-environment rosbag2-storage tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ mrpt-libobs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (maps C++ libraries).
  This package contains: mrpt-maps, mrpt-graphs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

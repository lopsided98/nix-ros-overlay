
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, cv-bridge, ffmpeg, freeglut, freenect, geometry-msgs, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libmaps, nav-msgs, octomap, opencv, openni2, pkg-config, python3Packages, pythonPackages, rclcpp, ros-environment, rosbag2-storage, sensor-msgs, std-msgs, stereo-msgs, tf2, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-iron-mrpt-libros-bridge";
  version = "2.13.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/iron/mrpt_libros_bridge/2.13.8-1.tar.gz";
    name = "2.13.8-1.tar.gz";
    sha256 = "fce50dc20e08acbe7f772473ba1ffeb6b2b8d7fc49051e87b8133b7a903d7f34";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake assimp cmake ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 octomap opencv opencv.cxxdev openni2 pkg-config python3Packages.pip pythonPackages.pybind11 ros-environment rosbag2-storage tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs mrpt-libmaps nav-msgs rclcpp sensor-msgs std-msgs stereo-msgs tf2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (ros2bridge C++ library).
  This package contains: mrpt-ros2bridge";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

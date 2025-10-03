
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, cv-bridge, ffmpeg, freeglut, freenect, geometry-msgs, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libmaps, nav-msgs, octomap, opencv, openni2, pkg-config, python3Packages, rclcpp, ros-environment, rosbag2-storage, sensor-msgs, std-msgs, stereo-msgs, tf2, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-libros-bridge";
  version = "2.14.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/jazzy/mrpt_libros_bridge/2.14.15-1.tar.gz";
    name = "2.14.15-1.tar.gz";
    sha256 = "536529b4411179b1705146699cbf0c4c99b9cc2e34c5eba5c329652cbfaee0d5";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake assimp cmake ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 octomap opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 ros-environment rosbag2-storage tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs mrpt-libmaps nav-msgs rclcpp sensor-msgs std-msgs stereo-msgs tf2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (ros2bridge C++ library).
  This package contains: mrpt-ros2bridge";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

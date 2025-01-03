
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, cv-bridge, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libapps, mrpt-libgui, mrpt-libnav, mrpt-libslam, octomap, opencv, openni2, pkg-config, python3Packages, ros-environment, rosbag-storage, roscpp, tf2-geometry-msgs, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-noetic-python-mrpt";
  version = "2.14.7-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/python_mrpt_ros-release/archive/release/noetic/python_mrpt/2.14.7-1.tar.gz";
    name = "2.14.7-1.tar.gz";
    sha256 = "d5b05b3e0d3768ddf912802a3d92c999ea3980e848e7c872c3e0b842f15ce986";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake cv-bridge ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 octomap opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 ros-environment rosbag-storage roscpp tf2-geometry-msgs tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ mrpt-libapps mrpt-libgui mrpt-libnav mrpt-libslam ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Python wrapper for Mobile Robot Programming Toolkit (MRPT) libraries";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

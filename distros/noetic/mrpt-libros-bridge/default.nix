
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, cv-bridge, ffmpeg, freeglut, freenect, geometry-msgs, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libmaps, nav-msgs, octomap, opencv, openni2, pkg-config, python3Packages, pythonPackages, ros-environment, rosbag-storage, roscpp, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-noetic-mrpt-libros-bridge";
  version = "2.13.7-r5";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_ros-release/archive/release/noetic/mrpt_libros_bridge/2.13.7-5.tar.gz";
    name = "2.13.7-5.tar.gz";
    sha256 = "d7cb337bef83cb8bde06455e6ee997e7100d1c20253bd4ca655995103bfd3026";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 octomap opencv opencv.cxxdev openni2 pkg-config python3Packages.pip pythonPackages.pybind11 ros-environment rosbag-storage tf2-geometry-msgs tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs mrpt-libmaps nav-msgs roscpp sensor-msgs std-msgs stereo-msgs tf2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (ros2bridge C++ library).
  This package contains: mrpt-ros2bridge";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

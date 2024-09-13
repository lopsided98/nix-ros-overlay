
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, cv-bridge, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libbase, mrpt-libmath, octomap, opencv, openni2, pkg-config, python3Packages, pythonPackages, ros-environment, rosbag-storage, roscpp, tf2-geometry-msgs, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-noetic-mrpt-libposes";
  version = "2.13.8-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_ros-release/archive/release/noetic/mrpt_libposes/2.13.8-1.tar.gz";
    name = "2.13.8-1.tar.gz";
    sha256 = "57a995c7180a7fadc870da662e3b1ec9f2a2356234b6dc037ba5e103f0852cff";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake cv-bridge ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 octomap opencv opencv.cxxdev openni2 pkg-config python3Packages.pip pythonPackages.pybind11 ros-environment rosbag-storage roscpp tf2-geometry-msgs tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ mrpt-libbase mrpt-libmath ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (poses C++ libraries).
  This package contains: mrpt-poses, mrpt-tfest, mrpt-bayes";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

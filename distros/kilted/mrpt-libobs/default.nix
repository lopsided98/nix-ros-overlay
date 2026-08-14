
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, libxrandr, libxxf86vm, mrpt-libopengl, mrpt-libposes, opencv, openni2, pkg-config, python3Packages, tinyxml-2, udev, wxGTK32, zlib }:
buildRosPackage {
  pname = "ros-kilted-mrpt-libobs";
  version = "2.15.21-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/kilted/mrpt_libobs/2.15.21-1.tar.gz";
    name = "2.15.21-1.tar.gz";
    sha256 = "d57a2efe7f1312f419a732b4a39a069b51dcd66e2a01c63a417f8d5cbc5eec5c";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 libxrandr libxxf86vm opencv opencv.cxxdev openni2 pkg-config python3Packages.pip python3Packages.pybind11 tinyxml-2 udev wxGTK32 zlib ];
  propagatedBuildInputs = [ mrpt-libopengl mrpt-libposes ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (obs C++ libraries).
  This package contains: mrpt-obs, mrpt-topography";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

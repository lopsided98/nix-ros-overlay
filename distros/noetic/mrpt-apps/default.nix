
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, cv-bridge, ffmpeg, freeglut, freenect, geometry-msgs, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libapps, mrpt-libnav, mrpt-libros-bridge, nav-msgs, openni2, pkg-config, python3Packages, ros-environment, rosbag-storage, roscpp, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-noetic-mrpt-apps";
  version = "2.14.8-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_ros-release/archive/release/noetic/mrpt_apps/2.14.8-1.tar.gz";
    name = "2.14.8-1.tar.gz";
    sha256 = "91a3074e7c58f70b67f959a757baa070374036c71f1f1dc47290198e7c90cd5d";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake cv-bridge ffmpeg freeglut freenect geometry-msgs glfw3 libGL libGLU libjpeg libpcap libusb1 nav-msgs openni2 pkg-config python3Packages.pip python3Packages.pybind11 ros-environment rosbag-storage roscpp sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ mrpt-libapps mrpt-libnav mrpt-libros-bridge ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) applications";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

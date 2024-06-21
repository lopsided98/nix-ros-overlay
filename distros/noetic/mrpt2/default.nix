
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, cv-bridge, eigen, ffmpeg, freeglut, freenect, geometry-msgs, glfw3, jsoncpp, libGL, libGLU, libjpeg, libpcap, libusb1, nav-msgs, opencv, openni2, pkg-config, python3Packages, pythonPackages, ros-environment, rosbag-storage, roscpp, sensor-msgs, std-msgs, stereo-msgs, suitesparse, tf2, tf2-geometry-msgs, tf2-msgs, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-noetic-mrpt2";
  version = "2.13.1-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt2-release/archive/release/noetic/mrpt2/2.13.1-1.tar.gz";
    name = "2.13.1-1.tar.gz";
    sha256 = "c65ae41e23d57abed25bc559aee9db433ed239e5e72589e9910cc5bdbc889a14";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake ffmpeg freenect jsoncpp libjpeg libpcap libusb1 openni2 pkg-config python3Packages.pip pythonPackages.pybind11 ros-environment tinyxml-2 udev wxGTK32 zlib ];
  propagatedBuildInputs = [ cv-bridge eigen freeglut geometry-msgs glfw3 libGL libGLU nav-msgs opencv opencv.cxxdev rosbag-storage roscpp sensor-msgs std-msgs stereo-msgs suitesparse tf2 tf2-geometry-msgs tf2-msgs xorg.libXrandr xorg.libXxf86vm ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) version 2.x";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

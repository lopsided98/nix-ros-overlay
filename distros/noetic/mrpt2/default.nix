
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, cv-bridge, eigen, ffmpeg, freeglut, freenect, geometry-msgs, glfw3, jsoncpp, libjpeg, libpcap, libusb1, nav-msgs, octomap, opencv, openni2, python3Packages, pythonPackages, ros-environment, rosbag-storage, roscpp, sensor-msgs, std-msgs, stereo-msgs, suitesparse, tf2, tf2-msgs, tinyxml-2, udev, wxGTK, xorg, zlib }:
buildRosPackage {
  pname = "ros-noetic-mrpt2";
  version = "2.9.4-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt2-release/archive/release/noetic/mrpt2/2.9.4-1.tar.gz";
    name = "2.9.4-1.tar.gz";
    sha256 = "2c4a0b7c0c87ae409bd2546e9d6b7181b5ed869db87d4cfa61b8b192a6f8303c";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake ffmpeg freenect jsoncpp libjpeg libpcap libusb1 openni2 python3Packages.pip pythonPackages.pybind11 ros-environment tinyxml-2 udev wxGTK zlib ];
  propagatedBuildInputs = [ cv-bridge eigen freeglut geometry-msgs glfw3 nav-msgs octomap opencv rosbag-storage roscpp sensor-msgs std-msgs stereo-msgs suitesparse tf2 tf2-msgs xorg.libXrandr xorg.libXxf86vm ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 2.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

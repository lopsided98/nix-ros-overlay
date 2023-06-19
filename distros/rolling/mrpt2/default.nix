
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, cv-bridge, eigen, ffmpeg, freeglut, freenect, geometry-msgs, glfw3, jsoncpp, libjpeg, libpcap, libusb1, nav-msgs, octomap, opencv, openni2, pythonPackages, rosbag2-storage, sensor-msgs, std-msgs, stereo-msgs, suitesparse, tf2, tf2-msgs, tinyxml-2, udev, wxGTK, xorg, zlib }:
buildRosPackage {
  pname = "ros-rolling-mrpt2";
  version = "2.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt2-release/archive/release/rolling/mrpt2/2.9.0-2.tar.gz";
    name = "2.9.0-2.tar.gz";
    sha256 = "b8dba7f08ffac2ce87ec45b6f22fcc5c22f5db9fc3389b887e7de9018170e265";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake assimp cmake ffmpeg freenect jsoncpp libjpeg libpcap libusb1 openni2 pythonPackages.pybind11 tinyxml-2 udev wxGTK zlib ];
  propagatedBuildInputs = [ cv-bridge eigen freeglut geometry-msgs glfw3 nav-msgs octomap opencv rosbag2-storage sensor-msgs std-msgs stereo-msgs suitesparse tf2 tf2-msgs xorg.libXrandr xorg.libXxf86vm ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 2.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

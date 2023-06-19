
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, cv-bridge, eigen, ffmpeg, freeglut, freenect, geometry-msgs, glfw3, jsoncpp, libjpeg, libpcap, libusb1, nav-msgs, octomap, opencv, openni2, pythonPackages, rosbag2-storage, sensor-msgs, std-msgs, stereo-msgs, suitesparse, tf2, tf2-msgs, tinyxml-2, udev, wxGTK, xorg, zlib }:
buildRosPackage {
  pname = "ros-humble-mrpt2";
  version = "2.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt2-release/archive/release/humble/mrpt2/2.9.0-2.tar.gz";
    name = "2.9.0-2.tar.gz";
    sha256 = "3ab16a904e12dbac4a196351d4e3f6adb8073a9b190e300fc89da58b17d9508e";
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

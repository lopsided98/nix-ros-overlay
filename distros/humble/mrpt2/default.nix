
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, cv-bridge, eigen, ffmpeg, freeglut, freenect, geometry-msgs, glfw3, jsoncpp, libjpeg, libpcap, libusb1, nav-msgs, octomap, opencv, openni2, pythonPackages, rclcpp, ros-environment, rosbag2-storage, sensor-msgs, std-msgs, stereo-msgs, suitesparse, tf2, tf2-msgs, tinyxml-2, udev, wxGTK, xorg, zlib }:
buildRosPackage {
  pname = "ros-humble-mrpt2";
  version = "2.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt2-release/archive/release/humble/mrpt2/2.9.3-1.tar.gz";
    name = "2.9.3-1.tar.gz";
    sha256 = "4640af4d93f3432220ece29b4473027242c3ffaec47c0cbe6313c18349e37f00";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake assimp cmake ffmpeg freenect jsoncpp libjpeg libpcap libusb1 openni2 pythonPackages.pybind11 ros-environment tinyxml-2 udev wxGTK zlib ];
  propagatedBuildInputs = [ cv-bridge eigen freeglut geometry-msgs glfw3 nav-msgs octomap opencv rclcpp rosbag2-storage sensor-msgs std-msgs stereo-msgs suitesparse tf2 tf2-msgs xorg.libXrandr xorg.libXxf86vm ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 2.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

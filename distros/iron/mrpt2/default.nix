
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, cv-bridge, eigen, ffmpeg, freeglut, freenect, geometry-msgs, glfw3, jsoncpp, libGL, libGLU, libfyaml, libjpeg, libpcap, libusb1, nav-msgs, opencv, openni2, pkg-config, python3Packages, pythonPackages, qt5, rclcpp, ros-environment, rosbag2-storage, sensor-msgs, std-msgs, stereo-msgs, suitesparse, tf2, tf2-msgs, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-iron-mrpt2";
  version = "2.12.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt2-release/archive/release/iron/mrpt2/2.12.2-1.tar.gz";
    name = "2.12.2-1.tar.gz";
    sha256 = "32641c587f69fd411c9e2ee190a7ac4a0da25ecdcf9de92cd6980f346fad5e93";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake assimp cmake ffmpeg freenect jsoncpp libfyaml libjpeg libpcap libusb1 openni2 pkg-config python3Packages.pip pythonPackages.pybind11 qt5.qtbase ros-environment tinyxml-2 udev wxGTK32 zlib ];
  propagatedBuildInputs = [ cv-bridge eigen freeglut geometry-msgs glfw3 libGL libGLU nav-msgs opencv opencv.cxxdev rclcpp rosbag2-storage sensor-msgs std-msgs stereo-msgs suitesparse tf2 tf2-msgs xorg.libXrandr xorg.libXxf86vm ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) version 2.x";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

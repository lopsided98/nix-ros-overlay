
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, cv-bridge, eigen, ffmpeg, freeglut, freenect, geometry-msgs, glfw3, jsoncpp, libjpeg, libpcap, libusb1, nav-msgs, octomap, opencv, openni2, pcl-conversions, rosbag2-storage, sensor-msgs, std-msgs, stereo-msgs, suitesparse, tf2, tf2-msgs, tinyxml-2, udev, wxGTK, xorg, zlib }:
buildRosPackage {
  pname = "ros-rolling-mrpt2";
  version = "2.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt2-release/archive/release/rolling/mrpt2/2.8.1-1.tar.gz";
    name = "2.8.1-1.tar.gz";
    sha256 = "2f88201ecb2aed614919370821243873b34ab3980b759d223fee5727279575d4";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake ffmpeg freenect jsoncpp libjpeg libpcap libusb1 openni2 tinyxml-2 udev wxGTK zlib ];
  propagatedBuildInputs = [ cv-bridge eigen freeglut geometry-msgs glfw3 nav-msgs octomap opencv pcl-conversions rosbag2-storage sensor-msgs std-msgs stereo-msgs suitesparse tf2 tf2-msgs xorg.libXrandr xorg.libXxf86vm ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 2.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

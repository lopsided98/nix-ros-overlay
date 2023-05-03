
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, cv-bridge, eigen, ffmpeg, freeglut, freenect, geometry-msgs, glfw3, jsoncpp, libjpeg, libpcap, libusb1, nav-msgs, octomap, opencv, openni2, pcl-conversions, rosbag-storage, roscpp, sensor-msgs, std-msgs, stereo-msgs, suitesparse, tf2, tf2-msgs, tinyxml-2, udev, wxGTK, xorg, zlib }:
buildRosPackage {
  pname = "ros-melodic-mrpt2";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt2-release/archive/release/melodic/mrpt2/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "5d68b18a969fb26d11b9648570f3ed32e6c4b2cae8bc001c6fe4aaf6a03b07b2";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake ffmpeg freenect jsoncpp libjpeg libpcap libusb1 openni2 tinyxml-2 udev wxGTK zlib ];
  propagatedBuildInputs = [ cv-bridge eigen freeglut geometry-msgs glfw3 nav-msgs octomap opencv pcl-conversions rosbag-storage roscpp sensor-msgs std-msgs stereo-msgs suitesparse tf2 tf2-msgs xorg.libXrandr xorg.libXxf86vm ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 2.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb1, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-noetic-librealsense2";
  version = "2.50.0-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/librealsense2-release/archive/release/noetic/librealsense2/2.50.0-1.tar.gz";
    name = "2.50.0-1.tar.gz";
    sha256 = "309e30be33aaf0a794f4ee3291356806ea6d238c0798f70f0388d2cec9a08ba0";
  };

  buildType = "cmake";
  buildInputs = [ catkin libusb1 openssl pkg-config udev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library for capturing data from the Intel(R) RealSense(TM) SR300, D400, L500 Depth cameras and T2xx Tracking devices. This effort was initiated to better support researchers, creative coders, and app developers in domains such as robotics, virtual reality, and the internet of things. Several often-requested features of RealSense(TM); devices are implemented in this project.'';
    license = with lib.licenses; [ asl20 ];
  };
}

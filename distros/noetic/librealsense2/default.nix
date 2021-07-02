
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb1, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-noetic-librealsense2";
  version = "2.48.0-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/librealsense2-release/archive/release/noetic/librealsense2/2.48.0-1.tar.gz";
    name = "2.48.0-1.tar.gz";
    sha256 = "bce0dfe9b6fb802f781aa8f284eb44fb8519dcbed4622564429dbb50f6ed5565";
  };

  buildType = "cmake";
  buildInputs = [ libusb1 openssl pkg-config udev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library for capturing data from the Intel(R) RealSense(TM) SR300, D400 Depth cameras and T2xx Tracking devices. This effort was initiated to better support researchers, creative coders, and app developers in domains such as robotics, virtual reality, and the internet of things. Several often-requested features of RealSense(TM); devices are implemented in this project.'';
    license = with lib.licenses; [ asl20 ];
  };
}

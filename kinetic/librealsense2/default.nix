
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, udev, catkin, pkg-config, libusb1, linuxHeaders, openssl }:
buildRosPackage {
  pname = "ros-kinetic-librealsense2";
  version = "2.23.0-r1";

  src = fetchurl {
    url = https://github.com/IntelRealSense/librealsense2-release/archive/release/kinetic/librealsense2/2.23.0-1.tar.gz;
    sha256 = "589f2e168b78a154e657862b1ee1a662b243a510a55262281d0b3a5affdb5160";
  };

  buildInputs = [ udev pkg-config libusb1 linuxHeaders openssl ];
  propagatedBuildInputs = [ openssl udev libusb1 linuxHeaders ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library for capturing data from the Intel(R) RealSense(TM) SR300, D400 Depth cameras and T2xx Tracking devices. This effort was initiated to better support researchers, creative coders, and app developers in domains such as robotics, virtual reality, and the internet of things. Several often-requested features of RealSense(TM); devices are implemented in this project.'';
    license = with lib.licenses; [ asl20 ];
  };
}

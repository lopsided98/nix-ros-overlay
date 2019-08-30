
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, udev, catkin, pkg-config, libusb1, linuxHeaders, openssl }:
buildRosPackage {
  pname = "ros-kinetic-librealsense2";
  version = "2.25.2-r1";

  src = fetchurl {
    url = https://github.com/IntelRealSense/librealsense2-release/archive/release/kinetic/librealsense2/2.25.2-1.tar.gz;
    sha256 = "b171a356c3802b1de33c8deef9001409ffc7d19ae16667c8b60e3b9e56963463";
  };

  buildInputs = [ udev pkg-config libusb1 linuxHeaders openssl ];
  propagatedBuildInputs = [ openssl udev libusb1 linuxHeaders ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Doron Hirshberg
  Library for capturing data from the Intel(R) RealSense(TM) SR300, D400 Depth cameras and T2xx Tracking devices. This effort was initiated to better support researchers, creative coders, and app developers in domains such as robotics, virtual reality, and the internet of things. Several often-requested features of RealSense(TM); devices are implemented in this project.'';
    license = with lib.licenses; [ asl20 ];
  };
}

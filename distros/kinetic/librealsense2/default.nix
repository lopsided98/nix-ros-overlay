
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb1, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-kinetic-librealsense2";
  version = "2.39.0-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/librealsense2-release/archive/release/kinetic/librealsense2/2.39.0-1.tar.gz";
    name = "2.39.0-1.tar.gz";
    sha256 = "4406615341410c0fb62d34c08e97e02ad10e4e299c9935b3623061d49d71fcc0";
  };

  buildType = "cmake";
  buildInputs = [ pkg-config ];
  propagatedBuildInputs = [ libusb1 openssl udev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library for capturing data from the Intel(R) RealSense(TM) SR300, D400 Depth cameras and T2xx Tracking devices. This effort was initiated to better support researchers, creative coders, and app developers in domains such as robotics, virtual reality, and the internet of things. Several often-requested features of RealSense(TM); devices are implemented in this project.'';
    license = with lib.licenses; [ asl20 ];
  };
}

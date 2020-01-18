
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb1, linuxHeaders, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-melodic-librealsense2";
  version = "2.31.0-r3";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/librealsense2-release/archive/release/melodic/librealsense2/2.31.0-3.tar.gz";
    name = "2.31.0-3.tar.gz";
    sha256 = "8ca69f229adffd59eeb549d761107dcf188cc1c8ce001dfde1701f860259823b";
  };

  buildType = "cmake";
  buildInputs = [ pkg-config ];
  propagatedBuildInputs = [ libusb1 linuxHeaders openssl udev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library for capturing data from the Intel(R) RealSense(TM) SR300, D400 Depth cameras and T2xx Tracking devices. This effort was initiated to better support researchers, creative coders, and app developers in domains such as robotics, virtual reality, and the internet of things. Several often-requested features of RealSense(TM); devices are implemented in this project.'';
    license = with lib.licenses; [ asl20 ];
  };
}

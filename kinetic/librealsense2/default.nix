
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, udev, catkin, pkg-config, libusb1, linuxHeaders, openssl }:
buildRosPackage {
  pname = "ros-kinetic-librealsense2";
  version = "2.28.0-r2";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/librealsense2-release/archive/release/kinetic/librealsense2/2.28.0-2.tar.gz";
    name = "2.28.0-2.tar.gz";
    sha256 = "4cd9d18cd253d84436e5d2ebe8fb9f437e3e42713df395269e5050e1550954af";
  };

  buildType = "cmake";
  buildInputs = [ udev pkg-config libusb1 linuxHeaders openssl ];
  propagatedBuildInputs = [ openssl udev libusb1 linuxHeaders ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library for capturing data from the Intel(R) RealSense(TM) SR300, D400 Depth cameras and T2xx Tracking devices. This effort was initiated to better support researchers, creative coders, and app developers in domains such as robotics, virtual reality, and the internet of things. Several often-requested features of RealSense(TM); devices are implemented in this project.'';
    license = with lib.licenses; [ asl20 ];
  };
}

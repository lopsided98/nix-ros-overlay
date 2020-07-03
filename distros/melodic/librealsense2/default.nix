
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb1, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-melodic-librealsense2";
  version = "2.35.2-r2";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/librealsense2-release/archive/release/melodic/librealsense2/2.35.2-2.tar.gz";
    name = "2.35.2-2.tar.gz";
    sha256 = "7e72c4cc5911111e6c2c37ba2b433f98f139386fc78a066db25f7255c82a86fc";
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

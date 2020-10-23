
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-eloquent-librealsense2";
  version = "2.38.1-r4";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/librealsense2-release/archive/release/eloquent/librealsense2/2.38.1-4.tar.gz";
    name = "2.38.1-4.tar.gz";
    sha256 = "5662d72fb46200b1b4dc0a3769712e37cb7daed7f9391a8c7dc441b826a16f55";
  };

  buildType = "ament_cmake";
  buildInputs = [ pkg-config ];
  propagatedBuildInputs = [ libusb1 openssl udev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Library for capturing data from the Intel(R) RealSense(TM) SR300, D400 Depth cameras and T2xx Tracking devices. This effort was initiated to better support researchers, creative coders, and app developers in domains such as robotics, virtual reality, and the internet of things. Several often-requested features of RealSense(TM); devices are implemented in this project.'';
    license = with lib.licenses; [ asl20 ];
  };
}

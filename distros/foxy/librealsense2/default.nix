
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-foxy-librealsense2";
  version = "2.41.0-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/librealsense2-release/archive/release/foxy/librealsense2/2.41.0-1.tar.gz";
    name = "2.41.0-1.tar.gz";
    sha256 = "68a97494e0d6ea89366c6ceebc27306bc3bf2b0b163360ade505a8f918b1c0d3";
  };

  buildType = "ament_cmake";
  buildInputs = [ libusb1 openssl pkg-config udev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Library for capturing data from the Intel(R) RealSense(TM) SR300, D400 Depth cameras and T2xx Tracking devices. This effort was initiated to better support researchers, creative coders, and app developers in domains such as robotics, virtual reality, and the internet of things. Several often-requested features of RealSense(TM); devices are implemented in this project.'';
    license = with lib.licenses; [ asl20 ];
  };
}

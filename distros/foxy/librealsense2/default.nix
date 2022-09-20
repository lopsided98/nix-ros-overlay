
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-foxy-librealsense2";
  version = "2.51.1-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/librealsense2-release/archive/release/foxy/librealsense2/2.51.1-1.tar.gz";
    name = "2.51.1-1.tar.gz";
    sha256 = "6c7e79620d096bf900d4d2349ce340e561b117bca764511cba04ae643114c0c0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake libusb1 openssl pkg-config udev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Library for controlling and capturing data from the Intel(R) RealSense(TM) D400 devices.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-humble-librealsense2";
  version = "2.54.1-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/librealsense2-release/archive/release/humble/librealsense2/2.54.1-1.tar.gz";
    name = "2.54.1-1.tar.gz";
    sha256 = "4d24c5f3e178071855f666eae87966fb7f1faa29bbc48710c5e3ee478ea4c0bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake libusb1 openssl pkg-config udev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Library for controlling and capturing data from the Intel(R) RealSense(TM) D400 devices.'';
    license = with lib.licenses; [ asl20 ];
  };
}

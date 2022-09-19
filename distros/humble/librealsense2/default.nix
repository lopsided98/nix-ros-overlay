
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-humble-librealsense2";
  version = "2.51.1-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/librealsense2-release/archive/release/humble/librealsense2/2.51.1-1.tar.gz";
    name = "2.51.1-1.tar.gz";
    sha256 = "e6970ca7544d90a7f9c7a65e90f051de94cef50eac31550d973f82f8544bb6e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake libusb1 openssl pkg-config udev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Library for controlling and capturing data from the Intel(R) RealSense(TM) D400 devices.'';
    license = with lib.licenses; [ asl20 ];
  };
}

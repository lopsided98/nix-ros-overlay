
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-humble-librealsense2";
  version = "2.51.1-r2";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/librealsense2-release/archive/release/humble/librealsense2/2.51.1-2.tar.gz";
    name = "2.51.1-2.tar.gz";
    sha256 = "32dc72f786c742dd110357cda1d3fb8b60841a53fe63b3aba4d9560f025494c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake libusb1 openssl pkg-config udev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Library for controlling and capturing data from the Intel(R) RealSense(TM) D400 devices.'';
    license = with lib.licenses; [ asl20 ];
  };
}

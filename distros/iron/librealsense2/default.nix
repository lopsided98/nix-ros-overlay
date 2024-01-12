
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-iron-librealsense2";
  version = "2.54.1-r2";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/librealsense2-release/archive/release/iron/librealsense2/2.54.1-2.tar.gz";
    name = "2.54.1-2.tar.gz";
    sha256 = "eb4d2acfece2cc2f579507fd6718f0e40fab95574cb0c45e3cf61ca60ad8cb37";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake libusb1 openssl pkg-config udev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Library for controlling and capturing data from the Intel(R) RealSense(TM) D400 devices.'';
    license = with lib.licenses; [ asl20 ];
  };
}

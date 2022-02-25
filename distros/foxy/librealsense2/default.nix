
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-foxy-librealsense2";
  version = "2.50.0-r2";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/librealsense2-release/archive/release/foxy/librealsense2/2.50.0-2.tar.gz";
    name = "2.50.0-2.tar.gz";
    sha256 = "e42fbeda426e0be82aa345fe4dadf0091435e3634ef49791a563aa73db636354";
  };

  buildType = "ament_cmake";
  buildInputs = [ libusb1 openssl pkg-config udev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Library for capturing data from the Intel(R) RealSense(TM) SR300, D400, L500 Depth cameras and T2xx Tracking devices. This effort was initiated to better support researchers, creative coders, and app developers in domains such as robotics, virtual reality, and the internet of things. Several often-requested features of RealSense(TM); devices are implemented in this project.'';
    license = with lib.licenses; [ asl20 ];
  };
}

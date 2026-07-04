
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, ffmpeg, libdc1394, libpcap, libusb1, mrpt-comms, mrpt-maps, mrpt-viz, openni2 }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-hwdrivers";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_hwdrivers/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "461453e4e6e7a1460f838d2b12f7360415cb4a77df79ff787d91fc6d5c696e99";
  };

  buildType = "cmake";
  buildInputs = [ cmake ffmpeg libdc1394 libpcap libusb1 openni2 ];
  propagatedBuildInputs = [ mrpt-comms mrpt-maps mrpt-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_hwdrivers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

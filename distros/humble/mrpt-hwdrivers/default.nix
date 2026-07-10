
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, ffmpeg, libdc1394, libpcap, libusb1, mrpt-comms, mrpt-maps, mrpt-viz, openni2 }:
buildRosPackage {
  pname = "ros-humble-mrpt-hwdrivers";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_hwdrivers/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "d9608093800e4c94c7a1a9f9829e90fa6092b664e97a0a87066dadf7f3eb0e39";
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

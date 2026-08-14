
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, ffmpeg, libdc1394, libpcap, libusb1, mrpt-comms, mrpt-maps, mrpt-viz, openni2 }:
buildRosPackage {
  pname = "ros-humble-mrpt-hwdrivers";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_hwdrivers/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "706d7b2229c18782bf2dbf0564325a073d1b036ece3ce4c4045749ed9c4e21f6";
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

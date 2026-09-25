
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, ffmpeg, libdc1394, libpcap, libusb1, mrpt-comms, mrpt-maps, mrpt-viz, openni2 }:
buildRosPackage {
  pname = "ros-rolling-mrpt-hwdrivers";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_hwdrivers/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "a009f4ed32030d2c2b2e8c15763f9fc0f07626b9b27af59f2ff1e8376d774871";
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

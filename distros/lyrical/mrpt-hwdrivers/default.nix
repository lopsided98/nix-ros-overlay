
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, ffmpeg, libdc1394, libpcap, libusb1, mrpt-comms, mrpt-maps, mrpt-viz, openni2 }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-hwdrivers";
  version = "3.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_hwdrivers/3.1.4-1.tar.gz";
    name = "3.1.4-1.tar.gz";
    sha256 = "0a6cfeb5e1cf9fe418c78406cd019fd4d310b4aa6df6a2292621caa44583bd50";
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

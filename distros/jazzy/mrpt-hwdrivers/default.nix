
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, ffmpeg, libdc1394, libpcap, libusb1, mrpt-comms, mrpt-maps, mrpt-viz, openni2, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-hwdrivers";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_hwdrivers/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "d8cd5b8ebfcc4722bc69d576e0f60f8a2379642cda8ae997f1ce253d5b543016";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ ffmpeg libdc1394 libpcap libusb1 mrpt-comms mrpt-maps mrpt-viz openni2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_hwdrivers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

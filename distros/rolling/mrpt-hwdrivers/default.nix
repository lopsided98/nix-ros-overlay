
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, ffmpeg, libdc1394, libpcap, libusb1, mrpt-comms, mrpt-maps, mrpt-viz, openni2, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-hwdrivers";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_hwdrivers/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "3e9d60be9fd0b9a9a34b024b9674affe2dd331e8a2a6c4d6c6e4ef8b59aa8035";
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


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, ffmpeg, libdc1394, libpcap, libusb1, mrpt-comms, mrpt-maps, mrpt-viz, openni2, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-hwdrivers";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_hwdrivers/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "04643ed68646750156495cccde7d1dbc0ac065336ad501f9014b2d354eb05dc2";
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

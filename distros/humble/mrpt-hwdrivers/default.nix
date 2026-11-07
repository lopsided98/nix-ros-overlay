
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, ffmpeg, libdc1394, libpcap, libusb1, mrpt-comms, mrpt-maps, mrpt-viz, openni2, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-mrpt-hwdrivers";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_hwdrivers/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "7a2f1f895023e501c6c8fedf83757ad52c775bbf058db595111f1feac58edb11";
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


# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb1, linuxHeaders, openssl, pkg-config }:
buildRosPackage {
  pname = "ros-kinetic-librealsense";
  version = "1.12.2-r1";

  src = fetchurl {
    url = "https://github.com/intel-ros/librealsense-release/archive/release/kinetic/librealsense/1.12.2-1.tar.gz";
    name = "1.12.2-1.tar.gz";
    sha256 = "c704a8070489b4b4fbc3f23f514b284155731fc101391a8a5601b42c895c49ff";
  };

  buildType = "catkin";
  buildInputs = [ pkg-config ];
  propagatedBuildInputs = [ libusb1 linuxHeaders openssl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library for capturing data from the Intel(R) RealSense(TM) F200, SR300, R200, LR200 and ZR300 cameras. This effort was initiated to better support researchers, creative coders, and app developers in domains such as robotics, virtual reality, and the internet of things. Several often-requested features of RealSense(TM); devices are implemented in this project, including multi-camera capture.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, libjpeg, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-kinetic-libuvc";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ktossell/libuvc-release/archive/release/kinetic/libuvc/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "1521cdeba14d76a418d756a21b288ec84d191132bd9f4c2b634fd9df70a8b8b3";
  };

  buildType = "cmake";
  buildInputs = [ pkg-config ];
  propagatedBuildInputs = [ catkin libjpeg libusb1 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''USB Video Class driver library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

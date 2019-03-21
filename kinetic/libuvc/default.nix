
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pkg-config, libusb1, libjpeg, cmake }:
buildRosPackage {
  pname = "ros-kinetic-libuvc";
  version = "0.0.6-r1";

  src = fetchurl {
    url = https://github.com/ktossell/libuvc-release/archive/release/kinetic/libuvc/0.0.6-1.tar.gz;
    sha256 = "1521cdeba14d76a418d756a21b288ec84d191132bd9f4c2b634fd9df70a8b8b3";
  };

  propagatedBuildInputs = [ libusb1 catkin libjpeg ];
  nativeBuildInputs = [ libusb1 cmake libjpeg pkg-config ];

  meta = {
    description = ''USB Video Class driver library'';
    #license = lib.licenses.BSD;
  };
}

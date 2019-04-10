
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pkg-config, libusb1, libjpeg, cmake }:
buildRosPackage {
  pname = "ros-lunar-libuvc";
  version = "0.0.6-r2";

  src = fetchurl {
    url = https://github.com/ktossell/libuvc-release/archive/release/lunar/libuvc/0.0.6-2.tar.gz;
    sha256 = "259525af1224fb9c6157dadf288f4910121b9a506ec73345b427e08644e0a0a5";
  };

  buildInputs = [ libusb1 libjpeg pkg-config ];
  propagatedBuildInputs = [ libusb1 catkin libjpeg ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''USB Video Class driver library'';
    #license = lib.licenses.BSD;
  };
}

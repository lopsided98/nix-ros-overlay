
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libusb1, catkin, boost, libusb }:
buildRosPackage {
  pname = "ros-kinetic-lusb";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/lusb-release/archive/release/kinetic/lusb/1.1.0-0.tar.gz;
    sha256 = "f098ecde7d74c29fbef0ea3630945650bef25cffa66363c0c621056e47a44ff4";
  };

  propagatedBuildInputs = [ boost libusb ];
  nativeBuildInputs = [ libusb1 catkin boost ];

  meta = {
    description = ''Library for interfacing to USB devices'';
    #license = lib.licenses.BSD;
  };
}

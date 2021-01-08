
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libusb, libusb1 }:
buildRosPackage {
  pname = "ros-kinetic-lusb";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/lusb-release/archive/release/kinetic/lusb/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "f098ecde7d74c29fbef0ea3630945650bef25cffa66363c0c621056e47a44ff4";
  };

  buildType = "catkin";
  buildInputs = [ libusb1 ];
  propagatedBuildInputs = [ boost libusb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library for interfacing to USB devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

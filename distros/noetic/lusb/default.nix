
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libusb1 }:
buildRosPackage {
  pname = "ros-noetic-lusb";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/lusb-release/archive/release/noetic/lusb/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "65aeadc9a0f6e40009b2f8c5befeb581d7b83f954c40bf9bdf66847b9c9d53bc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost libusb1 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library for interfacing to USB devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

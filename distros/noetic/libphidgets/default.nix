
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb1 }:
buildRosPackage {
  pname = "ros-noetic-libphidgets";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/noetic/libphidgets/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "8819ed4fdd6d7f69744ef34c7d5573aee979beb11e64714897e5d9a3cc55e910";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libusb1 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libphidgets to use it as a ros dependency'';
    license = with lib.licenses; [ "LGPL" ];
  };
}

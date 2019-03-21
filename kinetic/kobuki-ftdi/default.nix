
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-command-line, catkin, libftdi, pkg-config, libusb }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-ftdi";
  version = "0.7.8-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/kobuki_core-release/archive/release/kinetic/kobuki_ftdi/0.7.8-1.tar.gz;
    sha256 = "c9469f2e65acc68339b7b100eba98e364ed334be32c22519c38e55f1cf5ee4ee";
  };

  propagatedBuildInputs = [ libusb libftdi ecl-command-line ];
  nativeBuildInputs = [ libftdi ecl-command-line catkin libusb pkg-config ];

  meta = {
    description = ''Utilities for flashing and enabling Kobuki's USB connection.
	    This package contains tools for flashing the Kobuki's FTDI chip (usually done at the factory).
	    The special firmware for the FTDI chip (USB to serial converter) enables it to appear as
	    /dev/kobuki on the user's PC.'';
    #license = lib.licenses.BSD;
  };
}

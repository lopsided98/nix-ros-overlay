
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-command-line, catkin, libftdi, libusb }:
buildRosPackage {
  pname = "ros-kinetic-roch-ftdi";
  version = "2.0.15";

  src = fetchurl {
    url = https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_ftdi/2.0.15-0.tar.gz;
    sha256 = "e2bd52557ad5e8645672365013360606387554f12bdc6d8fd73efb3337d0fd64";
  };

  propagatedBuildInputs = [ libusb libftdi ecl-command-line ];
  nativeBuildInputs = [ catkin libusb libftdi ecl-command-line ];

  meta = {
    description = ''Utilities for flashing and enabling roch's USB connection.
	    This package contains tools for flashing the roch's FTDI chip (usually done at the factory).
	    The special firmware for the FTDI chip (USB to serial converter) enables it to appear as 
	    /dev/roch on the user's PC.'';
    #license = lib.licenses.BSD;
  };
}

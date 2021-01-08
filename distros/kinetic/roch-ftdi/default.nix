
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-command-line, libftdi, libusb }:
buildRosPackage {
  pname = "ros-kinetic-roch-ftdi";
  version = "2.0.15";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_ftdi/2.0.15-0.tar.gz";
    name = "2.0.15-0.tar.gz";
    sha256 = "e2bd52557ad5e8645672365013360606387554f12bdc6d8fd73efb3337d0fd64";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-command-line libftdi libusb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utilities for flashing and enabling roch's USB connection.
	    This package contains tools for flashing the roch's FTDI chip (usually done at the factory).
	    The special firmware for the FTDI chip (USB to serial converter) enables it to appear as 
	    /dev/roch on the user's PC.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

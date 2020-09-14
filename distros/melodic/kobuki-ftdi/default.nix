
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-command-line, libftdi, libusb, pkg-config }:
buildRosPackage {
  pname = "ros-melodic-kobuki-ftdi";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_core-release/archive/release/melodic/kobuki_ftdi/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "321412cb348ed15d949d2c861d4c0d3514921185bf8cad86cba5946b5e985bdb";
  };

  buildType = "catkin";
  buildInputs = [ pkg-config ];
  propagatedBuildInputs = [ ecl-command-line libftdi libusb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utilities for flashing and enabling Kobuki's USB connection.
	    This package contains tools for flashing the Kobuki's FTDI chip (usually done at the factory).
	    The special firmware for the FTDI chip (USB to serial converter) enables it to appear as
	    /dev/kobuki on the user's PC.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

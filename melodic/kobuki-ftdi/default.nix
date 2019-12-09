
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libusb, catkin, libftdi, ecl-command-line, pkg-config }:
buildRosPackage {
  pname = "ros-melodic-kobuki-ftdi";
  version = "0.7.8";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_core-release/archive/release/melodic/kobuki_ftdi/0.7.8-0.tar.gz";
    name = "0.7.8-0.tar.gz";
    sha256 = "e1c6ba8e7d1fbd11de09faca56c7dd845fb12aa44432909e2ae0df6867296828";
  };

  buildType = "catkin";
  buildInputs = [ libftdi pkg-config ecl-command-line libusb ];
  propagatedBuildInputs = [ libftdi ecl-command-line libusb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utilities for flashing and enabling Kobuki's USB connection.
	    This package contains tools for flashing the Kobuki's FTDI chip (usually done at the factory).
	    The special firmware for the FTDI chip (USB to serial converter) enables it to appear as
	    /dev/kobuki on the user's PC.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

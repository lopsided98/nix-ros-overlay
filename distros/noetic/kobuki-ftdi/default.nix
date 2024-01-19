
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-command-line, libftdi, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-noetic-kobuki-ftdi";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_core-release/archive/release/noetic/kobuki_ftdi/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "18412e46db87688bbb61c3fc5ff42be7aed0f10bab0de1677028c3152f663356";
  };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config ];
  propagatedBuildInputs = [ ecl-command-line libftdi libusb1 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utilities for flashing and enabling Kobuki's USB connection.
	    This package contains tools for flashing the Kobuki's FTDI chip (usually done at the factory).
	    The special firmware for the FTDI chip (USB to serial converter) enables it to appear as
	    /dev/kobuki on the user's PC.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

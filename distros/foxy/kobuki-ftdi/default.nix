
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-command-line, libftdi, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-foxy-kobuki-ftdi";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/stonier/kobuki_ftdi-release/archive/release/foxy/kobuki_ftdi/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "cda5ab2f72ec067de9755cea8f98e7c596690c3ddb65eb4e9a3d3a472df34cfa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build pkg-config ];
  propagatedBuildInputs = [ ecl-command-line libftdi libusb1 ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Utilities for flashing and enabling Kobuki's USB connection.
	    This package contains tools for flashing the Kobuki's FTDI chip (usually done at the factory).
	    The special firmware for the FTDI chip (USB to serial converter) enables it to appear as
	    /dev/kobuki on the user's PC.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

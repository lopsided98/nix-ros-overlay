
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-command-line, libftdi, libusb, pkg-config }:
buildRosPackage {
  pname = "ros-eloquent-kobuki-ftdi";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_core-release/archive/release/eloquent/kobuki_ftdi/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "6282082eaca2a2328c354ad988cfb624b84d254e37957268cf9bea9a656ac50c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-build pkg-config ];
  propagatedBuildInputs = [ ecl-command-line libftdi libusb ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Utilities for flashing and enabling Kobuki's USB connection.
	    This package contains tools for flashing the Kobuki's FTDI chip (usually done at the factory).
	    The special firmware for the FTDI chip (USB to serial converter) enables it to appear as
	    /dev/kobuki on the user's PC.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

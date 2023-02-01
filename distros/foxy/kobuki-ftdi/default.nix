
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-command-line, libftdi, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-foxy-kobuki-ftdi";
  version = "1.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "stonier";
        repo = "kobuki_ftdi-release";
        rev = "release/foxy/kobuki_ftdi/1.0.0-1";
        sha256 = "sha256-xtx3VhcIxSg/UoHQ64Hfo8Z0D8zZwiB0xWd2zsrG178=";
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

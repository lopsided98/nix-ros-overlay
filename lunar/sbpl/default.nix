
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-lunar-sbpl";
  version = "1.3.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/sbpl-release/archive/release/lunar/sbpl/1.3.1-0.tar.gz;
    sha256 = "8ce04ffcfa360ed323678ae8ec96135e493e7b87c4e3b8ae157e8336ce0b1c2d";
  };

  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Search-based planning library (SBPL).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

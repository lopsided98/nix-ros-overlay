
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, gtest, catkin, console-bridge, rosunit, mavlink }:
buildRosPackage {
  pname = "ros-kinetic-libmavconn";
  version = "0.32.0-r1";

  src = fetchurl {
    url = https://github.com/mavlink/mavros-release/archive/release/kinetic/libmavconn/0.32.0-1.tar.gz;
    sha256 = "f62036309b210e44c524e9d2373ecfcc3d3fb870225269d8ca595a2766a14b5e";
  };

  buildInputs = [ console-bridge boost mavlink ];
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ console-bridge boost mavlink ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MAVLink communication library.
    This library provide unified connection handling classes
    and URL to connection object mapper.

    This library can be used in standalone programs.'';
    license = with lib.licenses; [ gpl3 lgpl2 bsdOriginal ];
  };
}

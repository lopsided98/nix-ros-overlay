
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mavlink, boost, catkin, rosunit, console-bridge, gtest }:
buildRosPackage {
  pname = "ros-kinetic-libmavconn";
  version = "0.33.3-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/kinetic/libmavconn/0.33.3-1.tar.gz";
    name = "0.33.3-1.tar.gz";
    sha256 = "405bb239a699966e0fb2608feb4442a5255a413ac7bff08484bd39041e8b1c18";
  };

  buildType = "catkin";
  buildInputs = [ mavlink boost console-bridge ];
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ mavlink boost console-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MAVLink communication library.
    This library provide unified connection handling classes
    and URL to connection object mapper.

    This library can be used in standalone programs.'';
    license = with lib.licenses; [ gpl3 lgpl2 bsdOriginal ];
  };
}

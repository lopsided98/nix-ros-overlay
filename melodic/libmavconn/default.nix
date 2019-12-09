
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mavlink, boost, catkin, rosunit, console-bridge, gtest }:
buildRosPackage {
  pname = "ros-melodic-libmavconn";
  version = "0.33.3-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/melodic/libmavconn/0.33.3-1.tar.gz";
    name = "0.33.3-1.tar.gz";
    sha256 = "6f40274397216a8d4b7b53b4277e8a6423d56c5f4b59698e4d5d0a9504faa7f3";
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

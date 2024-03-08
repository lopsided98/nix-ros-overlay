
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, console-bridge, gtest, mavlink, rosunit }:
buildRosPackage {
  pname = "ros-noetic-libmavconn";
  version = "1.18.0-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/noetic/libmavconn/1.18.0-1.tar.gz";
    name = "1.18.0-1.tar.gz";
    sha256 = "f59ced2a80d0084aa9cde8c9711fba69d4dc8d965d87620127a9ca84cd7209c1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ boost console-bridge mavlink ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MAVLink communication library.
    This library provide unified connection handling classes
    and URL to connection object mapper.

    This library can be used in standalone programs.'';
    license = with lib.licenses; [ gpl3Only lgpl3Only bsdOriginal ];
  };
}

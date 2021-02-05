
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, console-bridge, gtest, mavlink, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-libmavconn";
  version = "1.5.2-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/kinetic/libmavconn/1.5.2-1.tar.gz";
    name = "1.5.2-1.tar.gz";
    sha256 = "20e0249f2ca6f1fc7aa46ba9978ff60e72c1df8b942c7b53d07a02651020e0ba";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ boost console-bridge mavlink ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MAVLink communication library.
    This library provide unified connection handling classes
    and URL to connection object mapper.

    This library can be used in standalone programs.'';
    license = with lib.licenses; [ gpl3 lgpl2 bsdOriginal ];
  };
}

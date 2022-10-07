
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, console-bridge, gtest, mavlink, rosunit }:
buildRosPackage {
  pname = "ros-noetic-libmavconn";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/noetic/libmavconn/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "f7b8e6233a987230d6b19e42b98273ffaefcad2f403fcaf45839be3a1682a315";
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
    license = with lib.licenses; [ gpl3Only lgpl3Only bsdOriginal ];
  };
}

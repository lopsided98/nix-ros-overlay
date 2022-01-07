
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, console-bridge, gtest, mavlink, rosunit }:
buildRosPackage {
  pname = "ros-melodic-libmavconn";
  version = "1.12.2-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/melodic/libmavconn/1.12.2-1.tar.gz";
    name = "1.12.2-1.tar.gz";
    sha256 = "a3041c95add3036e7dbd4d3bedcde79be302f29e829f48418c906c20dd81be54";
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


# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, console-bridge, gtest, mavlink, rosunit }:
buildRosPackage {
  pname = "ros-melodic-libmavconn";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/melodic/libmavconn/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "d568941c7d2a4c80dc960a9e889ed8b505e9a190c2dadb968f98367df8c561c7";
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

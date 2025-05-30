
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, console-bridge, gtest, mavlink, rosunit }:
buildRosPackage {
  pname = "ros-noetic-libmavconn";
  version = "1.20.1-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/noetic/libmavconn/1.20.1-1.tar.gz";
    name = "1.20.1-1.tar.gz";
    sha256 = "e2484ce07194680508fc099ff3c8f7b28a5c360d2cb850636d868c1ab10f1f76";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ boost console-bridge mavlink ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "MAVLink communication library.
    This library provide unified connection handling classes
    and URL to connection object mapper.

    This library can be used in standalone programs.";
    license = with lib.licenses; [ gpl3Only lgpl3Only bsdOriginal ];
  };
}

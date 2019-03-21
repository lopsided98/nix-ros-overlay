
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, gtest, catkin, console-bridge, rosunit, mavlink }:
buildRosPackage {
  pname = "ros-melodic-libmavconn";
  version = "0.29.2";

  src = fetchurl {
    url = https://github.com/mavlink/mavros-release/archive/release/melodic/libmavconn/0.29.2-0.tar.gz;
    sha256 = "01a2d5c29791a6b4a85dc55a16b5a904fa22c58e73c99df0172cf8e8870c02b2";
  };

  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ console-bridge boost mavlink ];
  nativeBuildInputs = [ catkin console-bridge boost mavlink ];

  meta = {
    description = ''MAVLink communication library.
    This library provide unified connection handling classes
    and URL to connection object mapper.

    This library can be used in standalone programs.'';
    #license = lib.licenses.GPLv3;
  };
}


# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lz4, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-roslz4";
  version = "1.12.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/roslz4/1.12.17-1.tar.gz";
    name = "1.12.17-1.tar.gz";
    sha256 = "0f55a2821108febf725792be25966bb0136d05bc80f00311225a58f819a6c892";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ lz4 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python and C++ implementation of the LZ4 streaming format.  Large data
    streams are split into blocks which are compressed using the very fast LZ4
    compression algorithm.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

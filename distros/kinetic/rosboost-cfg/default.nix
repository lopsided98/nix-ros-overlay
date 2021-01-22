
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-rosboost-cfg";
  version = "1.14.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/kinetic/rosboost_cfg/1.14.6-1.tar.gz";
    name = "1.14.6-1.tar.gz";
    sha256 = "520c5694c165ffc84ff2d69941fd5ef20d5f82b2d3013f92231eb9722c6afe3a";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains scripts used by the rosboost-cfg tool for determining cflags/lflags/etc. of boost on your system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

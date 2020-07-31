
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-rosboost-cfg";
  version = "1.15.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosboost_cfg/1.15.6-1.tar.gz";
    name = "1.15.6-1.tar.gz";
    sha256 = "cf3676b2451f69b2846f166df9d5e0dcbda416f2a25a5e29163c8f8673a518c3";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Contains scripts used by the rosboost-cfg tool for determining cflags/lflags/etc. of boost on your system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

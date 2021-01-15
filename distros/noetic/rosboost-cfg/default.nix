
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-rosboost-cfg";
  version = "1.15.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosboost_cfg/1.15.7-1.tar.gz";
    name = "1.15.7-1.tar.gz";
    sha256 = "7785199b2fb11f649e2783d683b05cc1627213e9f14acece52ddb55e0d4dfe8c";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Contains scripts used by the rosboost-cfg tool for determining cflags/lflags/etc. of boost on your system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

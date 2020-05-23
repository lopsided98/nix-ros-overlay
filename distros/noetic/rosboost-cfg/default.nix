
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-noetic-rosboost-cfg";
  version = "1.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosboost_cfg/1.15.1-1.tar.gz";
    name = "1.15.1-1.tar.gz";
    sha256 = "b42893c7b5b9b5dacbc179d35c10aaa72700b490a7791309201443bfacf1475a";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Contains scripts used by the rosboost-cfg tool for determining cflags/lflags/etc. of boost on your system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-noetic-rosboost-cfg";
  version = "1.15.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosboost_cfg/1.15.4-1.tar.gz";
    name = "1.15.4-1.tar.gz";
    sha256 = "944de8426dd933dd91962b85d3563840b4f014008582eb8b26ea427ca5385c3b";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Contains scripts used by the rosboost-cfg tool for determining cflags/lflags/etc. of boost on your system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-rosboost-cfg";
  version = "1.15.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosboost_cfg/1.15.9-1.tar.gz";
    name = "1.15.9-1.tar.gz";
    sha256 = "42c36635eddf4a3d49380b02a64e3a25e8a667f0b9356dde9dbb6491c395fe44";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "Contains scripts used by the rosboost-cfg tool for determining cflags/lflags/etc. of boost on your system";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

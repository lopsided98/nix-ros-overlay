
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-rosboost-cfg";
  version = "1.15.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosboost_cfg/1.15.8-1.tar.gz";
    name = "1.15.8-1.tar.gz";
    sha256 = "7560041d65a39dc786a1202318395c866af0b7b17a5eb8839e4c485f7679c7eb";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Contains scripts used by the rosboost-cfg tool for determining cflags/lflags/etc. of boost on your system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

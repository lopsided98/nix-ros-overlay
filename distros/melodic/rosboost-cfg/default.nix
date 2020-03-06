
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-rosboost-cfg";
  version = "1.14.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/melodic/rosboost_cfg/1.14.8-1.tar.gz";
    name = "1.14.8-1.tar.gz";
    sha256 = "18805bb70e204afa454230063143482757097a80e2f4efc009a9c34e7d2c3bf8";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Contains scripts used by the rosboost-cfg tool for determining cflags/lflags/etc. of boost on your system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

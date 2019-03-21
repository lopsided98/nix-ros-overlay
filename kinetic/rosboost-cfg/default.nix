
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-rosboost-cfg";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/kinetic/rosboost_cfg/1.14.4-0.tar.gz;
    sha256 = "4477c6c23ef42c3ccd3965da5a3fbb905af6c5ca566ac017b333de30ec1f0117";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains scripts used by the rosboost-cfg tool for determining cflags/lflags/etc. of boost on your system'';
    #license = lib.licenses.BSD;
  };
}

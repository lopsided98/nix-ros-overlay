
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-rosboost-cfg";
  version = "1.14.6";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/melodic/rosboost_cfg/1.14.6-0.tar.gz";
    name = "1.14.6-0.tar.gz";
    sha256 = "1aad8d583287e022e1f74e4093b5279383ec65589461a3345941daa136b2e57e";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains scripts used by the rosboost-cfg tool for determining cflags/lflags/etc. of boost on your system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

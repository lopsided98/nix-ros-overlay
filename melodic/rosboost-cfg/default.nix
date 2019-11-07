
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-rosboost-cfg";
  version = "1.14.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/melodic/rosboost_cfg/1.14.7-1.tar.gz";
    name = "1.14.7-1.tar.gz";
    sha256 = "13ad3af364705f97b8d872dc3de8f12930ef448ac6119f527f36bbed82925e2c";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains scripts used by the rosboost-cfg tool for determining cflags/lflags/etc. of boost on your system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-qb-move-description";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/kinetic/qb_move_description/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "72ac955609b7f8c481900591f925ecbfb77929f9d91b9204672fb34f677fe38e";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-qb-move-control";
  version = "2.0.0";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/kinetic/qb_move_control/2.0.0-0.tar.gz;
    sha256 = "31efd9d2a02d7c5cf9b5d4628e45682ed07def92d2e381bb14afef756cbfee6d";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS control node for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-qb-move-description";
  version = "2.0.0";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/kinetic/qb_move_description/2.0.0-0.tar.gz;
    sha256 = "bcdfed414fd6ba484d360df6ae3ca592095ca4ecb2c2b3d474b40f27b38c493b";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for qbrobotics® qbmove device.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}

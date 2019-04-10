
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-qb-move-control";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/lunar/qb_move_control/2.0.0-1.tar.gz;
    sha256 = "36284cd140cf22e885171c161fb9935637de61bc13b90c36b2d18ff00329843d";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS control node for qbrobotics® qbmove device.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}

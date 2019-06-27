
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-qb-move-control";
  version = "2.1.2-r1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/kinetic/qb_move_control/2.1.2-1.tar.gz;
    sha256 = "d4303eec1730ca92281db93cc90fcf567b7964fbc1bf3b6f092ed22a164a45d6";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS control node for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

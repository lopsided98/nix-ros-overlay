
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-qb-hand-description";
  version = "2.0.0";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/kinetic/qb_hand_description/2.0.0-0.tar.gz;
    sha256 = "0846ce8393876c425fc9bb60e8724359fea333d10f0875e2c808a251ee991edd";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for qbrobotics® qbhand device.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}

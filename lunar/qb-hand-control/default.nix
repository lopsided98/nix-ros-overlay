
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-qb-hand-control";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/lunar/qb_hand_control/2.0.0-1.tar.gz;
    sha256 = "29b378896129b6570684818876d9b21b6a77bfa2c94b993aaff2e0e819e041f9";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS control node for qbrobotics® qbhand device.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}


# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qb-hand-control";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/noetic/qb_hand_control/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "98835f987ad007fa4bc682d1c8db4e6c7b1f1808893c6d2a4b9e04138816a676";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS control node for qbrobotics® qbhand device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}

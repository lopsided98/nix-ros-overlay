
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-qb-move-control";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/melodic/qb_move_control/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "d7df8abcb9d4579698e9452e057d58e12d8da5ad622c6bdaf5066cd9525f5499";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS control node for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}

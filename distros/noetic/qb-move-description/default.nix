
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qb-move-description";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/noetic/qb_move_description/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "39d1d6f4a9ea5f313e7d9eea7f7f49d41390078313012112326cc98490b52465";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

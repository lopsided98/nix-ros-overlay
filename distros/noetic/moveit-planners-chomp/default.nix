
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chomp-motion-planner, moveit-core, moveit-ros-planning-interface, pluginlib, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-moveit-planners-chomp";
  version = "1.1.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_planners_chomp/1.1.15-1.tar.gz";
    name = "1.1.15-1.tar.gz";
    sha256 = "dc51a91aeeb2d6e9d901a88126823bc74ab3cc6b0ef72bd3a6689f0e95a3b912";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ moveit-ros-planning-interface rostest ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The interface for using CHOMP within MoveIt";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

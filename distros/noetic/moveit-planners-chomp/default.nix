
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chomp-motion-planner, moveit-core, moveit-ros-planning-interface, pluginlib, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-moveit-planners-chomp";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_planners_chomp/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "37066e33108ec29a16479c5fd28af96ca4b81a48016ab269bdc70f8d5bb4b67c";
  };

  buildType = "catkin";
  checkInputs = [ moveit-ros-planning-interface rostest ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The interface for using CHOMP within MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chomp-motion-planner, moveit-core, moveit-ros-planning-interface, pluginlib, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-moveit-planners-chomp";
  version = "1.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_planners_chomp/1.1.16-1.tar.gz";
    name = "1.1.16-1.tar.gz";
    sha256 = "ce964540283c19e7ff90e76e370c8be937b2b2dd2c81cfe2c5649a8a0275835a";
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

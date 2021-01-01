
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chomp-motion-planner, moveit-core, moveit-ros-planning-interface, pluginlib, roscpp, rostest, tf }:
buildRosPackage {
  pname = "ros-kinetic-moveit-planners-chomp";
  version = "0.9.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_planners_chomp/0.9.18-1.tar.gz";
    name = "0.9.18-1.tar.gz";
    sha256 = "f292e1542ae3a727a0baf6382fe051d8a8d2570f51370a5590b0a7848e7a0350";
  };

  buildType = "catkin";
  checkInputs = [ moveit-ros-planning-interface rostest ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-core pluginlib roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The interface for using CHOMP within MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

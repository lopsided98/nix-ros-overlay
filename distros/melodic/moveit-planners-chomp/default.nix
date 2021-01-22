
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chomp-motion-planner, moveit-core, moveit-ros-planning-interface, pluginlib, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-moveit-planners-chomp";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_planners_chomp/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "414a382daa832067162d0ba19dfbbf6cbb35f738bb2947e7257df723a576c874";
  };

  buildType = "catkin";
  checkInputs = [ moveit-ros-planning-interface rostest ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The interface for using CHOMP within MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, catkin, moveit-core, actionlib, eigen }:
buildRosPackage {
  pname = "ros-kinetic-moveit-kinematics";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_kinematics/0.9.15-0.tar.gz;
    sha256 = "623f0f5d6932cdeab3b294718f5056f911469440956fb278d670ad0d3f164047";
  };

  propagatedBuildInputs = [ moveit-ros-planning pluginlib moveit-core actionlib ];
  nativeBuildInputs = [ moveit-ros-planning moveit-core pluginlib actionlib catkin eigen ];

  meta = {
    description = ''Package for all inverse kinematics solvers in MoveIt!'';
    #license = lib.licenses.BSD;
  };
}

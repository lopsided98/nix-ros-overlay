
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, moveit-core, moveit-ros-move-group, moveit-task-constructor-core, moveit-task-constructor-msgs, pluginlib, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-moveit-task-constructor-capabilities";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_task_constructor-release/archive/release/noetic/moveit_task_constructor_capabilities/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "838abdf038d54c59dad6fc0924965d1ddd94278c63905c0170ec8a154eec917d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib moveit-core moveit-ros-move-group moveit-task-constructor-core moveit-task-constructor-msgs pluginlib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveGroupCapabilites to interact with MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

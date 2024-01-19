
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, moveit-core, moveit-ros-move-group, moveit-task-constructor-core, moveit-task-constructor-msgs, pluginlib, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-moveit-task-constructor-capabilities";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_task_constructor-release/archive/release/noetic/moveit_task_constructor_capabilities/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "62507447ec6aa167fb1039921b7286c0e78b0394a9d22412251ac49db3d80bf6";
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

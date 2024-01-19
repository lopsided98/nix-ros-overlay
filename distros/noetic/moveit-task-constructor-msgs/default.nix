
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, moveit-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-moveit-task-constructor-msgs";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_task_constructor-release/archive/release/noetic/moveit_task_constructor_msgs/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "5065c373d9af7b83138cb2bbd583049bee13cc58d4a8b4ceadec9770f98ffcc5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime moveit-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for MoveIt Task Pipeline'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

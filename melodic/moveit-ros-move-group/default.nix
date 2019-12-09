
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, pluginlib, std-srvs, actionlib, catkin, roscpp, moveit-resources, tf2, tf2-geometry-msgs, moveit-ros-planning, moveit-kinematics, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-move-group";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_move_group/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "d769750daaea1f09c9e550295c4b04c4fb609c3d514a6ae03f4a7c38c81ab515";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core pluginlib std-srvs actionlib tf2 moveit-ros-planning tf2-geometry-msgs roscpp tf2-ros ];
  checkInputs = [ rostest moveit-resources ];
  propagatedBuildInputs = [ moveit-core pluginlib std-srvs tf2 actionlib moveit-ros-planning tf2-geometry-msgs roscpp moveit-kinematics tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The move_group node for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

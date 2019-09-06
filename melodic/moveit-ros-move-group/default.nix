
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, std-srvs, moveit-resources, pluginlib, tf2-geometry-msgs, moveit-kinematics, catkin, tf2-ros, tf2, rostest, moveit-core, actionlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-move-group";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_move_group/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "d769750daaea1f09c9e550295c4b04c4fb609c3d514a6ae03f4a7c38c81ab515";
  };

  buildType = "catkin";
  buildInputs = [ moveit-ros-planning std-srvs pluginlib tf2-geometry-msgs tf2-ros tf2 moveit-core actionlib roscpp ];
  checkInputs = [ moveit-resources rostest ];
  propagatedBuildInputs = [ moveit-ros-planning std-srvs pluginlib tf2-geometry-msgs moveit-kinematics tf2-ros tf2 moveit-core actionlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The move_group node for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

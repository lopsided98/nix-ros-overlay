
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, catkin, roscpp, interactive-markers, eigen-conversions, tf }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-robot-interaction";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_robot_interaction/0.9.15-0.tar.gz;
    sha256 = "a0d9a6ae7a998fb31b0fe9beb2edfd28717e10db75626d2a5bc7ae02048eaec4";
  };

  buildInputs = [ moveit-ros-planning interactive-markers pluginlib tf eigen-conversions roscpp ];
  propagatedBuildInputs = [ moveit-ros-planning interactive-markers pluginlib tf eigen-conversions roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! that offer interaction via interactive markers'';
    #license = lib.licenses.BSD;
  };
}

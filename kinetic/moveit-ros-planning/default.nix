
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, pluginlib, catkin, moveit-core, actionlib, moveit-ros-perception, angles, eigen-conversions, chomp-motion-planner, eigen }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-planning";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_planning/0.9.15-0.tar.gz;
    sha256 = "3ab8f13182e60ba0ff7b69baf425e01a763cf52a31dbf9c04956727f49b7fd3c";
  };

  propagatedBuildInputs = [ moveit-core pluginlib actionlib moveit-ros-perception angles dynamic-reconfigure eigen-conversions ];
  nativeBuildInputs = [ pluginlib catkin eigen-conversions moveit-core actionlib moveit-ros-perception angles dynamic-reconfigure chomp-motion-planner eigen ];

  meta = {
    description = ''Planning components of MoveIt! that use ROS'';
    #license = lib.licenses.BSD;
  };
}

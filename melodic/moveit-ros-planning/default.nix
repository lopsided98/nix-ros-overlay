
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, rosconsole, tf2-geometry-msgs, pluginlib, srdfdom, catkin, message-filters, tf2-ros, tf2, urdf, moveit-core, tf2-eigen, actionlib, moveit-ros-perception, moveit-msgs, dynamic-reconfigure, roscpp, eigen }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-planning";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_planning/1.0.1-0.tar.gz;
    sha256 = "88875fc4613ea154a28967c8402e847aac51cbec89a0a5afe32449f291b47d66";
  };

  buildInputs = [ tf2-msgs rosconsole pluginlib tf2-geometry-msgs moveit-ros-perception srdfdom message-filters tf2-ros tf2 actionlib moveit-core tf2-eigen dynamic-reconfigure urdf moveit-msgs roscpp eigen ];
  propagatedBuildInputs = [ tf2-msgs rosconsole pluginlib tf2-geometry-msgs moveit-ros-perception srdfdom message-filters tf2-ros tf2 urdf moveit-core tf2-eigen dynamic-reconfigure actionlib moveit-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Planning components of MoveIt! that use ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

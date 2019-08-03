
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-ros-move-group, pluginlib, rosconsole, catkin, roscpp, moveit-core, actionlib, moveit-msgs, dynamic-reconfigure, tf, eigen }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-manipulation";
  version = "0.9.17-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_manipulation/0.9.17-1.tar.gz;
    sha256 = "5a4e0ae3d9b8758c1a7d941f663f88d88b4beae9588e161388a65a6e99d58bff";
  };

  buildInputs = [ moveit-ros-planning moveit-ros-move-group pluginlib rosconsole roscpp actionlib moveit-core dynamic-reconfigure moveit-msgs tf eigen ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-move-group pluginlib rosconsole roscpp actionlib moveit-core dynamic-reconfigure moveit-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! used for manipulation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

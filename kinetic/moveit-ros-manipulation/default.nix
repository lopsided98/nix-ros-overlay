
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-ros-move-group, pluginlib, rosconsole, catkin, roscpp, moveit-core, actionlib, moveit-msgs, dynamic-reconfigure, tf, eigen }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-manipulation";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_manipulation/0.9.15-0.tar.gz;
    sha256 = "6ab6cf73d86a17c1da0bd2946f8d071a62b7b0e478a5f46dbe96e30de2516fa6";
  };

  buildInputs = [ moveit-ros-planning moveit-ros-move-group pluginlib rosconsole roscpp actionlib moveit-core dynamic-reconfigure moveit-msgs tf eigen ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-move-group pluginlib rosconsole roscpp actionlib moveit-core dynamic-reconfigure moveit-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! used for manipulation'';
    #license = lib.licenses.BSD;
  };
}

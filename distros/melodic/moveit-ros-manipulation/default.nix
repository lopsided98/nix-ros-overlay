
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, dynamic-reconfigure, eigen, moveit-core, moveit-msgs, moveit-ros-move-group, moveit-ros-planning, pluginlib, rosconsole, roscpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-manipulation";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_manipulation/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "64176e2bc054be7b647618782d7523e28214ddbab31ea52fd1f57bce391cc675";
  };

  buildType = "catkin";
  buildInputs = [ eigen ];
  propagatedBuildInputs = [ actionlib dynamic-reconfigure moveit-core moveit-msgs moveit-ros-move-group moveit-ros-planning pluginlib rosconsole roscpp tf2-eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! used for manipulation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

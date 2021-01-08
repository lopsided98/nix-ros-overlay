
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, dynamic-reconfigure, eigen, moveit-core, moveit-msgs, moveit-ros-move-group, moveit-ros-planning, pluginlib, rosconsole, roscpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-manipulation";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_manipulation/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "182f09d7d08b7e9326ab655eee9b60eb474bf50c846a35a43cf3d07a41b985ce";
  };

  buildType = "catkin";
  buildInputs = [ eigen ];
  propagatedBuildInputs = [ actionlib dynamic-reconfigure moveit-core moveit-msgs moveit-ros-move-group moveit-ros-planning pluginlib rosconsole roscpp tf2-eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt used for manipulation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

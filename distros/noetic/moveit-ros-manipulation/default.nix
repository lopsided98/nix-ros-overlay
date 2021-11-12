
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, dynamic-reconfigure, eigen, moveit-core, moveit-msgs, moveit-ros-move-group, moveit-ros-planning, pluginlib, rosconsole, roscpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-manipulation";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_manipulation/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "974e7eb8336e60a341523209cf4f0ad175dad73cffd735863d4410f7e0c6e7d2";
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

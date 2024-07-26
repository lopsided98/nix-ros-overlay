
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, dynamic-reconfigure, eigen, moveit-core, moveit-msgs, moveit-ros-move-group, moveit-ros-planning, pluginlib, rosconsole, roscpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-manipulation";
  version = "1.1.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_manipulation/1.1.14-1.tar.gz";
    name = "1.1.14-1.tar.gz";
    sha256 = "b81f489fdfb27c280c13dc689f68ae8ab3a05ddc9bd2ac52a9f59f6c01b68c5a";
  };

  buildType = "catkin";
  buildInputs = [ catkin eigen ];
  propagatedBuildInputs = [ actionlib dynamic-reconfigure moveit-core moveit-msgs moveit-ros-move-group moveit-ros-planning pluginlib rosconsole roscpp tf2-eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Components of MoveIt used for manipulation";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

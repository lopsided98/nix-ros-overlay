
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, dynamic-reconfigure, eigen, moveit-core, moveit-msgs, moveit-ros-move-group, moveit-ros-planning, pluginlib, rosconsole, roscpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-manipulation";
  version = "1.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_manipulation/1.1.16-1.tar.gz";
    name = "1.1.16-1.tar.gz";
    sha256 = "7c71e929e6ae809a7d6fb53706ea675795d304a41799f063d0ae64b74061bcf1";
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

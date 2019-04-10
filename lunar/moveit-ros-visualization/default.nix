
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, moveit-ros-robot-interaction, catkin, pkg-config, rostest, moveit-ros-warehouse, rviz, interactive-markers, geometric-shapes, rospy, moveit-ros-perception, roscpp, moveit-ros-planning-interface, object-recognition-msgs, eigen }:
buildRosPackage {
  pname = "ros-lunar-moveit-ros-visualization";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_ros_visualization/0.9.12-1.tar.gz;
    sha256 = "a1f9a943058bafcdbd72189aad0a7ad2283bf0ec3752c98fe5cd4366562e584c";
  };

  buildInputs = [ pluginlib moveit-ros-perception moveit-ros-robot-interaction moveit-ros-warehouse rviz interactive-markers geometric-shapes object-recognition-msgs rospy roscpp moveit-ros-planning-interface eigen ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pluginlib moveit-ros-perception moveit-ros-robot-interaction moveit-ros-warehouse rviz interactive-markers geometric-shapes object-recognition-msgs rospy roscpp moveit-ros-planning-interface ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Components of MoveIt that offer visualization'';
    #license = lib.licenses.BSD;
  };
}

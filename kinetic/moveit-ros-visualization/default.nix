
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, moveit-ros-robot-interaction, class-loader, rospy, moveit-ros-perception, tf, pkg-config, rviz, eigen-conversions, moveit-ros-planning-interface, catkin, roscpp, eigen, pluginlib, rostest, moveit-ros-warehouse, geometric-shapes, interactive-markers, object-recognition-msgs }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-visualization";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_visualization/0.9.15-0.tar.gz;
    sha256 = "f09fba71a55b61b2d8d7a20684a7ccbf28fef7c462bf5b799dd9b6c90d1cbb54";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pluginlib moveit-ros-perception moveit-ros-robot-interaction moveit-ros-warehouse rviz interactive-markers geometric-shapes object-recognition-msgs rospy roscpp moveit-ros-planning-interface ];
  nativeBuildInputs = [ rosconsole pluginlib moveit-ros-robot-interaction moveit-ros-perception class-loader catkin roscpp pkg-config moveit-ros-warehouse rviz interactive-markers geometric-shapes object-recognition-msgs rospy eigen-conversions tf moveit-ros-planning-interface eigen ];

  meta = {
    description = ''Components of MoveIt! that offer visualization'';
    #license = lib.licenses.BSD;
  };
}

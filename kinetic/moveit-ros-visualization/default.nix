
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, moveit-ros-robot-interaction, class-loader, rospy, moveit-ros-perception, tf, pkg-config, rviz, eigen-conversions, moveit-ros-planning-interface, catkin, roscpp, eigen, pluginlib, rostest, moveit-ros-warehouse, geometric-shapes, interactive-markers, object-recognition-msgs }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-visualization";
  version = "0.9.17-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_visualization/0.9.17-1.tar.gz;
    sha256 = "93ebd24b176314a3e36d8c0b02aa97dc73f96022cf46d59a1823b848d9076bdb";
  };

  buildInputs = [ rosconsole pluginlib moveit-ros-robot-interaction moveit-ros-perception class-loader roscpp moveit-ros-warehouse rviz interactive-markers geometric-shapes object-recognition-msgs rospy eigen-conversions tf moveit-ros-planning-interface eigen ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pluginlib moveit-ros-perception moveit-ros-robot-interaction moveit-ros-warehouse rviz interactive-markers geometric-shapes object-recognition-msgs rospy roscpp moveit-ros-planning-interface ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Components of MoveIt! that offer visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

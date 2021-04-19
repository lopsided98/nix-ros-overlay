
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, eigen, geometric-shapes, interactive-markers, moveit-ros-perception, moveit-ros-planning-interface, moveit-ros-robot-interaction, moveit-ros-warehouse, object-recognition-msgs, ogre1_9, pkg-config, pluginlib, qt5, rosconsole, roscpp, rospy, rostest, rviz, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-visualization";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_visualization/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "668c0e9ebf19e1fa485772489f8841acbda0e92ffcb5ee35b401109669083ec5";
  };

  buildType = "catkin";
  buildInputs = [ class-loader eigen ogre1_9 qt5.qtbase ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ geometric-shapes interactive-markers moveit-ros-perception moveit-ros-planning-interface moveit-ros-robot-interaction moveit-ros-warehouse object-recognition-msgs pluginlib rosconsole roscpp rospy rviz tf2-eigen ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Components of MoveIt that offer visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

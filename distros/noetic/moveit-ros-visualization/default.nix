
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, eigen, geometric-shapes, interactive-markers, moveit-ros-perception, moveit-ros-planning-interface, moveit-ros-robot-interaction, moveit-ros-warehouse, object-recognition-msgs, ogre1_9, pkg-config, pluginlib, qt5, rosconsole, roscpp, rospy, rostest, rviz, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-visualization";
  version = "1.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_visualization/1.1.16-1.tar.gz";
    name = "1.1.16-1.tar.gz";
    sha256 = "7fd8edc287805592578e6a234cbbeb9abda6213c63830e26cbf96347a5eb036c";
  };

  buildType = "catkin";
  buildInputs = [ catkin class-loader eigen ogre1_9 pkg-config qt5.qtbase ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ geometric-shapes interactive-markers moveit-ros-perception moveit-ros-planning-interface moveit-ros-robot-interaction moveit-ros-warehouse object-recognition-msgs pluginlib rosconsole roscpp rospy rviz tf2-eigen ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = "Components of MoveIt that offer visualization";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, moveit-ros-robot-interaction, class-loader, rospy, moveit-ros-perception, pkg-config, rviz, moveit-ros-planning-interface, ogre1_9, catkin, roscpp, eigen, pluginlib, rostest, moveit-ros-warehouse, geometric-shapes, qt5, interactive-markers, tf2-eigen, object-recognition-msgs }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-visualization";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_visualization/1.0.1-0.tar.gz;
    sha256 = "dbd5ecd8a6d7bc84c82e54ae85c28908e317387cf59999ead83e1808b25e31bf";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ rosconsole pluginlib moveit-ros-robot-interaction moveit-ros-perception rospy moveit-ros-warehouse rviz interactive-markers tf2-eigen object-recognition-msgs geometric-shapes roscpp moveit-ros-planning-interface ];
  nativeBuildInputs = [ ogre1_9 rosconsole moveit-ros-robot-interaction class-loader catkin rospy moveit-ros-perception roscpp eigen pluginlib qt5.qtbase pkg-config moveit-ros-warehouse rviz interactive-markers tf2-eigen geometric-shapes object-recognition-msgs moveit-ros-planning-interface ];

  meta = {
    description = ''Components of MoveIt! that offer visualization'';
    #license = lib.licenses.BSD;
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, moveit-ros-robot-interaction, class-loader, rospy, moveit-ros-perception, pkg-config, rviz, moveit-ros-planning-interface, ogre1_9, catkin, roscpp, eigen, pluginlib, rostest, moveit-ros-warehouse, geometric-shapes, qt5, interactive-markers, tf2-eigen, object-recognition-msgs }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-visualization";
  version = "1.0.2-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_visualization/1.0.2-1.tar.gz;
    sha256 = "9df003a3b5efded0a174f70c81b91525535fba541f5ead44c240493baff63c79";
  };

  buildInputs = [ ogre1_9 pluginlib moveit-ros-robot-interaction rosconsole class-loader qt5.qtbase roscpp moveit-ros-warehouse rviz interactive-markers tf2-eigen rospy moveit-ros-perception geometric-shapes object-recognition-msgs moveit-ros-planning-interface eigen ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ rosconsole pluginlib moveit-ros-robot-interaction moveit-ros-perception rospy moveit-ros-warehouse rviz interactive-markers tf2-eigen object-recognition-msgs geometric-shapes roscpp moveit-ros-planning-interface ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Components of MoveIt! that offer visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

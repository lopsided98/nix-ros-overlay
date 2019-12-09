
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, interactive-markers, pluginlib, ogre1_9, eigen, class-loader, rostest, object-recognition-msgs, moveit-ros-warehouse, qt5, rosconsole, moveit-ros-planning-interface, moveit-ros-robot-interaction, catkin, geometric-shapes, roscpp, pkg-config, rospy, tf2-eigen, moveit-ros-perception, rviz }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-visualization";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_visualization/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "9df003a3b5efded0a174f70c81b91525535fba541f5ead44c240493baff63c79";
  };

  buildType = "catkin";
  buildInputs = [ moveit-ros-warehouse interactive-markers moveit-ros-robot-interaction pluginlib ogre1_9 moveit-ros-planning-interface roscpp qt5.qtbase tf2-eigen moveit-ros-perception eigen rviz geometric-shapes rosconsole class-loader rospy object-recognition-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ interactive-markers moveit-ros-warehouse pluginlib moveit-ros-robot-interaction moveit-ros-planning-interface tf2-eigen moveit-ros-perception rviz rosconsole geometric-shapes roscpp rospy object-recognition-msgs ];
  nativeBuildInputs = [ pkg-config catkin ];

  meta = {
    description = ''Components of MoveIt! that offer visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

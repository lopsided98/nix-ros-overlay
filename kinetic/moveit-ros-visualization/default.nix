
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, interactive-markers, eigen-conversions, pluginlib, tf, eigen, class-loader, rostest, object-recognition-msgs, moveit-ros-warehouse, rosconsole, moveit-ros-planning-interface, moveit-ros-robot-interaction, catkin, geometric-shapes, roscpp, pkg-config, rospy, moveit-ros-perception, rviz }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-visualization";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_visualization/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "93ebd24b176314a3e36d8c0b02aa97dc73f96022cf46d59a1823b848d9076bdb";
  };

  buildType = "catkin";
  buildInputs = [ moveit-ros-warehouse eigen-conversions moveit-ros-robot-interaction pluginlib moveit-ros-planning-interface tf interactive-markers roscpp moveit-ros-perception eigen rviz geometric-shapes rosconsole class-loader rospy object-recognition-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ interactive-markers moveit-ros-warehouse pluginlib moveit-ros-robot-interaction moveit-ros-planning-interface moveit-ros-perception rviz geometric-shapes roscpp rospy object-recognition-msgs ];
  nativeBuildInputs = [ pkg-config catkin ];

  meta = {
    description = ''Components of MoveIt! that offer visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

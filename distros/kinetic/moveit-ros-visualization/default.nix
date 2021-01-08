
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, eigen, eigen-conversions, geometric-shapes, interactive-markers, moveit-ros-perception, moveit-ros-planning-interface, moveit-ros-robot-interaction, moveit-ros-warehouse, object-recognition-msgs, pkg-config, pluginlib, rosconsole, roscpp, rospy, rostest, rviz, tf }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-visualization";
  version = "0.9.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_visualization/0.9.18-1.tar.gz";
    name = "0.9.18-1.tar.gz";
    sha256 = "8e45cda205e236762679376a679b03d161415403c1b30298645d33d0df8121a6";
  };

  buildType = "catkin";
  buildInputs = [ class-loader eigen eigen-conversions rosconsole tf ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ geometric-shapes interactive-markers moveit-ros-perception moveit-ros-planning-interface moveit-ros-robot-interaction moveit-ros-warehouse object-recognition-msgs pluginlib roscpp rospy rviz ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Components of MoveIt! that offer visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, eigen, eigen-conversions, geometric-shapes, interactive-markers, moveit-ros-perception, moveit-ros-planning-interface, moveit-ros-robot-interaction, moveit-ros-warehouse, object-recognition-msgs, pkg-config, pluginlib, rosconsole, roscpp, rospy, rostest, rviz, tf }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-visualization";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_visualization/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "93ebd24b176314a3e36d8c0b02aa97dc73f96022cf46d59a1823b848d9076bdb";
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

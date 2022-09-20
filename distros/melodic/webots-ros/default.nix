
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, moveit-ros-planning-interface, moveit-simple-controller-manager, robot-state-publisher, ros-control, ros-controllers, roscpp, rospy, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-webots-ros";
  version = "5.0.1-r2";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros-release/archive/release/melodic/webots_ros/5.0.1-2.tar.gz";
    name = "5.0.1-2.tar.gz";
    sha256 = "eba56b3a93053246bbce5f7269abb99da3ee8d1ef5cce05a83f17651d7b66d89";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime moveit-ros-planning-interface moveit-simple-controller-manager robot-state-publisher ros-control ros-controllers roscpp rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package containing examples for interfacing ROS with the standard ROS controller of Webots'';
    license = with lib.licenses; [ asl20 ];
  };
}

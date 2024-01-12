
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, moveit-ros-planning-interface, moveit-simple-controller-manager, robot-state-publisher, ros-control, ros-controllers, roscpp, rospy, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-webots-ros";
  version = "2023.1.0-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros-release/archive/release/noetic/webots_ros/2023.1.0-1.tar.gz";
    name = "2023.1.0-1.tar.gz";
    sha256 = "862b0f471ff3c6d5e7835eece2641c5a9de65286c7a98a988273a9a97164bf29";
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

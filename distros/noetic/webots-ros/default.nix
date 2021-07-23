
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, moveit-ros-planning-interface, robot-state-publisher, ros-control, ros-controllers, roscpp, rospy, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-webots-ros";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros-release/archive/release/noetic/webots_ros/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "4175499066cf217586c057a5c6a81945abcfb491eeec7b753c72068a0f871914";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime moveit-ros-planning-interface robot-state-publisher ros-control ros-controllers roscpp rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package containing examples for interfacing ROS with the standard ROS controller of Webots'';
    license = with lib.licenses; [ asl20 ];
  };
}

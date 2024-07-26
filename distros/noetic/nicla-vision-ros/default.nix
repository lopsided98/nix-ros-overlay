
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-common-msgs, catkin, cv-bridge, gazebo-ros, robot-state-publisher, rospy, rviz, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-nicla-vision-ros";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ADVRHumanoids/nicla_vision_ros-release/archive/release/noetic/nicla_vision_ros/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f9e0b6796169c7f1f54ed187dc3ea43acd1a4de7141333c8bb4fadd7e8d6155d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ audio-common-msgs cv-bridge gazebo-ros robot-state-publisher rospy rviz sensor-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Integration of the Arduino Nicla Vision board in the ROS world. 
    Sensors data from the Nicla Vision is collected and trasmited to the relevant ROS topics";
    license = with lib.licenses; [ asl20 ];
  };
}

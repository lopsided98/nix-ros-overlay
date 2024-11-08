
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-common-msgs, catkin, cv-bridge, gazebo-ros, robot-state-publisher, rospy, rviz, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-nicla-vision-ros";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ADVRHumanoids/nicla_vision_ros-release/archive/release/noetic/nicla_vision_ros/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "d5e3db9f5a8fcfb2bfed15d08671a9680cce49633dcb502fe42aa4c7f7a073d5";
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


# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-webots-ros";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros-release/archive/release/melodic/webots_ros/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "af8cddb4486838d1bd6bc1bdecae612faa1b03b47d06c7a5d7dce0a3b999bb69";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package containing examples for interfacing ROS with the standard ROS controller of Webots'';
    license = with lib.licenses; [ asl20 ];
  };
}

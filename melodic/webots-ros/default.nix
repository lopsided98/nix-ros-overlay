
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, message-generation, message-runtime, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-webots-ros";
  version = "2.0.5-r1";

  src = fetchurl {
    url = https://github.com/omichel/webots_ros-release/archive/release/melodic/webots_ros/2.0.5-1.tar.gz;
    sha256 = "af8cddb4486838d1bd6bc1bdecae612faa1b03b47d06c7a5d7dce0a3b999bb69";
  };

  buildInputs = [ sensor-msgs roscpp message-generation rospy std-msgs tf ];
  propagatedBuildInputs = [ sensor-msgs roscpp message-runtime rospy std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package containing examples for interfacing ROS with the standard ROS controller of Webots'';
    license = with lib.licenses; [ asl20 ];
  };
}

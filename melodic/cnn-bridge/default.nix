
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, std-msgs, catkin, roslib, rospy, message-runtime, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-cnn-bridge";
  version = "0.8.5-r1";

  src = fetchurl {
    url = "https://github.com/wew84/cnn_bridge-release/archive/release/melodic/cnn_bridge/0.8.5-1.tar.gz";
    name = "0.8.5-1.tar.gz";
    sha256 = "e1a18db4221ed9d52b21a85d68846cac16a5790d53355380d3552e0145eb691f";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs std-msgs roslib rospy message-generation ];
  propagatedBuildInputs = [ message-generation geometry-msgs message-runtime std-msgs roslib rospy roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cnn_bridge package take freeze graphs and publishes them as ROS messages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

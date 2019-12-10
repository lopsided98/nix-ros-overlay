
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, roslaunch, roslib, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-cnn-bridge";
  version = "0.8.5-r1";

  src = fetchurl {
    url = "https://github.com/wew84/cnn_bridge-release/archive/release/melodic/cnn_bridge/0.8.5-1.tar.gz";
    name = "0.8.5-1.tar.gz";
    sha256 = "e1a18db4221ed9d52b21a85d68846cac16a5790d53355380d3552e0145eb691f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime roslaunch roslib rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cnn_bridge package take freeze graphs and publishes them as ROS messages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

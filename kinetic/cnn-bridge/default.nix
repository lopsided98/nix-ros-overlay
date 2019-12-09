
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, std-msgs, catkin, roslib, rospy, message-runtime, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-cnn-bridge";
  version = "0.8.5-r1";

  src = fetchurl {
    url = "https://github.com/wew84/cnn_bridge-release/archive/release/kinetic/cnn_bridge/0.8.5-1.tar.gz";
    name = "0.8.5-1.tar.gz";
    sha256 = "96fa3638de20485ab1eabeb7a42b21d641fdbc658ef926e5d664d440819164b0";
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

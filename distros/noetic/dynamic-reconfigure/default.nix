
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, message-generation, message-runtime, rosbash, roscpp, roscpp-serialization, roslib, rospy, rosservice, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dynamic-reconfigure";
  version = "1.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/dynamic_reconfigure-release/archive/release/noetic/dynamic_reconfigure/1.7.4-1.tar.gz";
    name = "1.7.4-1.tar.gz";
    sha256 = "68aa23459061d514f4995bb87b404c1fad65692dbdfcc318b56a62c2762754f3";
  };

  buildType = "catkin";
  buildInputs = [ catkin cpp-common message-generation roscpp-serialization rostest ];
  checkInputs = [ rosbash ];
  propagatedBuildInputs = [ boost message-runtime roscpp roslib rospy rosservice std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The dynamic_reconfigure package provides a means to update parameters
    at runtime without having to restart the node.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

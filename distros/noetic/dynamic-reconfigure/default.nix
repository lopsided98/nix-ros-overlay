
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, message-generation, message-runtime, roscpp, roscpp-serialization, roslib, rospy, rosservice, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dynamic-reconfigure";
  version = "1.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/dynamic_reconfigure-release/archive/release/noetic/dynamic_reconfigure/1.7.3-1.tar.gz";
    name = "1.7.3-1.tar.gz";
    sha256 = "bb4e9834fe4b0da8a503c8060a5f4780ac29f4192b0f889a07be6362176b41f4";
  };

  buildType = "catkin";
  buildInputs = [ catkin cpp-common message-generation roscpp-serialization rostest ];
  propagatedBuildInputs = [ boost message-runtime roscpp roslib rospy rosservice std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dynamic_reconfigure package provides a means to update parameters
    at runtime without having to restart the node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

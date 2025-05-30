
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, message-generation, message-runtime, roscpp, roscpp-serialization, roslib, rospy, rosservice, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dynamic-reconfigure";
  version = "1.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/dynamic_reconfigure-release/archive/release/noetic/dynamic_reconfigure/1.7.6-1.tar.gz";
    name = "1.7.6-1.tar.gz";
    sha256 = "33d172591f80197e2564f4e57fd4bb4138da5185c036f4be29a278589623097d";
  };

  buildType = "catkin";
  buildInputs = [ catkin cpp-common message-generation roscpp-serialization rostest ];
  propagatedBuildInputs = [ boost message-runtime roscpp roslib rospy rosservice std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The dynamic_reconfigure package provides a means to update parameters
    at runtime without having to restart the node.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

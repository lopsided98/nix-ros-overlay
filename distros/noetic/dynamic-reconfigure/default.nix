
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, message-generation, message-runtime, roscpp, roscpp-serialization, roslib, rospy, rosservice, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dynamic-reconfigure";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/dynamic_reconfigure-release/archive/release/noetic/dynamic_reconfigure/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "1d819cef438c55862e79f5a5f489e336c79722464a403488aa6b9a3ea3320e72";
  };

  buildType = "catkin";
  buildInputs = [ cpp-common message-generation roscpp-serialization rostest ];
  propagatedBuildInputs = [ boost message-runtime roscpp roslib rospy rosservice std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dynamic_reconfigure package provides a means to update parameters
    at runtime without having to restart the node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, message-generation, message-runtime, roscpp, roscpp-serialization, roslib, rospy, rosservice, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dynamic-reconfigure";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/dynamic_reconfigure-release/archive/release/noetic/dynamic_reconfigure/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "d413788e97245a877c314523b4c6524c6e3aec180ec9361ca4294ad7ee982210";
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

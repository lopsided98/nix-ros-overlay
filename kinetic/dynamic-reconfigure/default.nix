
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, rosservice, roscpp, rostest, message-generation, message-runtime, roscpp-serialization, rospy, std-msgs, roslib }:
buildRosPackage {
  pname = "ros-kinetic-dynamic-reconfigure";
  version = "1.5.50";

  src = fetchurl {
    url = https://github.com/ros-gbp/dynamic_reconfigure-release/archive/release/kinetic/dynamic_reconfigure/1.5.50-0.tar.gz;
    sha256 = "aa70f0eb61e6423e6fa50181098a2ae727559c9a5bcde64f6c0b2a45f5d49f9d";
  };

  buildInputs = [ rostest message-generation boost roscpp-serialization std-msgs roscpp ];
  propagatedBuildInputs = [ roslib message-runtime boost rospy std-msgs roscpp rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This unary stack contains the dynamic_reconfigure package which provides a means to change
    node parameters at any time without having to restart the node.'';
    #license = lib.licenses.BSD;
  };
}

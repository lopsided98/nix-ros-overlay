
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, smach-ros, message-generation, actionlib, message-runtime, rospy }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-msgs";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_msgs/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "11496f25d463cb6e501c62c86f3c838b52294c122420bb6c651e2f4d3196f40d";
  };

  buildType = "catkin";
  buildInputs = [ message-generation actionlib-msgs actionlib ];
  propagatedBuildInputs = [ actionlib-msgs smach-ros actionlib message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_msgs provides the messages used by FlexBE.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

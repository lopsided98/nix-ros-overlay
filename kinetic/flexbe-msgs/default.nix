
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, smach-ros, message-generation, actionlib, message-runtime, rospy }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-msgs";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_msgs/1.1.1-0.tar.gz;
    sha256 = "f22f5ee8b82401a70e6b832a2f99e03f554f5922d56cf9dfd607e331fed82dec";
  };

  buildInputs = [ message-generation actionlib-msgs actionlib ];
  propagatedBuildInputs = [ actionlib message-runtime actionlib-msgs rospy smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_msgs provides the messages used by FlexBE.'';
    #license = lib.licenses.BSD;
  };
}

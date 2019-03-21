
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, smach-ros, message-generation, actionlib, message-runtime, rospy }:
buildRosPackage {
  pname = "ros-melodic-flexbe-msgs";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_msgs/1.1.1-0.tar.gz;
    sha256 = "f0d0a0750c9981f6c79fdd2b204fb58cf03f3c45d9bf299c5e82e51046b9ffa5";
  };

  propagatedBuildInputs = [ actionlib message-runtime actionlib-msgs rospy smach-ros ];
  nativeBuildInputs = [ catkin message-generation actionlib-msgs actionlib ];

  meta = {
    description = ''flexbe_msgs provides the messages used by FlexBE.'';
    #license = lib.licenses.BSD;
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, actionlib, catkin, smach-ros, actionlib-msgs, rospy, message-generation }:
buildRosPackage {
  pname = "ros-melodic-flexbe-msgs";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_msgs/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "adde3f5455d430996b8139ddba6be0e1e9b35bbde315b1faa3c27458e18a9510";
  };

  buildType = "catkin";
  buildInputs = [ message-generation actionlib actionlib-msgs ];
  propagatedBuildInputs = [ actionlib smach-ros actionlib-msgs rospy message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_msgs provides the messages used by FlexBE.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

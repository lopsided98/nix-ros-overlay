
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, actionlib, catkin, smach-ros, actionlib-msgs, rospy, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-msgs";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_msgs/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "4c0842514f23eaa19e284d194e08f4c67f5a3381333c8ca2cac8b26cedb30864";
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

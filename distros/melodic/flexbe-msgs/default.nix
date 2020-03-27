
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime, rospy, smach-ros }:
buildRosPackage {
  pname = "ros-melodic-flexbe-msgs";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_msgs/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "1951e1bcf661a7de5fd77c3d4eef5ced678cb5982cdf7c324100cb9cc28f91f8";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs message-runtime rospy smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_msgs provides the messages used by FlexBE.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

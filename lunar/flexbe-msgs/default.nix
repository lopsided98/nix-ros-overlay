
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, smach-ros, message-generation, actionlib, message-runtime, rospy }:
buildRosPackage {
  pname = "ros-lunar-flexbe-msgs";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/lunar/flexbe_msgs/1.1.2-0.tar.gz;
    sha256 = "2dfe7512920afcb495ff444997c9b542dec3f708aed7a7d57170f7b8c6201f83";
  };

  buildInputs = [ message-generation actionlib-msgs actionlib ];
  propagatedBuildInputs = [ actionlib-msgs smach-ros actionlib message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_msgs provides the messages used by FlexBE.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

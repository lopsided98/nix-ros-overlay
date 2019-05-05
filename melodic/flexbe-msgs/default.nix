
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, smach-ros, message-generation, actionlib, message-runtime, rospy }:
buildRosPackage {
  pname = "ros-melodic-flexbe-msgs";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_msgs/1.1.2-0.tar.gz;
    sha256 = "a18b6fdf3878ec9ef4efc130225f2c6f714fd46936710b95eeaaca1a7495bab8";
  };

  buildInputs = [ message-generation actionlib-msgs actionlib ];
  propagatedBuildInputs = [ actionlib-msgs smach-ros actionlib message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_msgs provides the messages used by FlexBE.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

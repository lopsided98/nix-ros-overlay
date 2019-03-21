
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, actionlib, rospy }:
buildRosPackage {
  pname = "ros-melodic-flexbe-input";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_input/1.1.1-0.tar.gz;
    sha256 = "5df6e897ef3b2b6890162fce3b14381f09fcb9d04cbfae3b2aa2d59cb50408ff";
  };

  propagatedBuildInputs = [ flexbe-msgs smach-ros actionlib rospy ];
  nativeBuildInputs = [ catkin actionlib ];

  meta = {
    description = ''flexbe_input enables to send data to onboard behavior when required.'';
    #license = lib.licenses.BSD;
  };
}

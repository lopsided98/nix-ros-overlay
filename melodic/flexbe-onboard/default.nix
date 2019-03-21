
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, rospy, flexbe-core }:
buildRosPackage {
  pname = "ros-melodic-flexbe-onboard";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_onboard/1.1.1-0.tar.gz;
    sha256 = "4e9ed39007e361c836bd8287950c9edf2fc8b36eceae6bd17f3b2edf6cc72942";
  };

  propagatedBuildInputs = [ flexbe-msgs smach-ros flexbe-core rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_onboard implements the robot-side of the behavior engine from where all behaviors are started.'';
    #license = lib.licenses.BSD;
  };
}

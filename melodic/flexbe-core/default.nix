
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, rospy, diagnostic-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-flexbe-core";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_core/1.1.1-0.tar.gz;
    sha256 = "9c75df22b869597c9022881dc78c9b2bd270664eafd0b74c23cb3ad0fa431aa1";
  };

  propagatedBuildInputs = [ flexbe-msgs rospy diagnostic-msgs tf smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_core provides the core smach extension for the FlexBE behavior engine.'';
    #license = lib.licenses.BSD;
  };
}

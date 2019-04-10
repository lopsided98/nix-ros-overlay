
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, rospy, diagnostic-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-core";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_core/1.1.2-0.tar.gz;
    sha256 = "267934d8fcac632524deb761fd674ae420fa727a01031a6fea973ea43aa87b5c";
  };

  propagatedBuildInputs = [ flexbe-msgs rospy diagnostic-msgs tf smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_core provides the core smach extension for the FlexBE behavior engine.'';
    #license = lib.licenses.BSD;
  };
}

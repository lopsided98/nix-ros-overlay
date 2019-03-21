
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, rospy, diagnostic-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-core";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_core/1.1.1-0.tar.gz;
    sha256 = "35fffd1661d49cc7381741bcd855b2fea65240d25d9e608de3972c69ab806bac";
  };

  propagatedBuildInputs = [ flexbe-msgs rospy diagnostic-msgs tf smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_core provides the core smach extension for the FlexBE behavior engine.'';
    #license = lib.licenses.BSD;
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, rosbag, catkin, smach-ros, rostest, flexbe-testing, rospy, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-flexbe-states";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_states/1.1.1-0.tar.gz;
    sha256 = "b2e3d3a6bdf6e11e644baf06683f2107b95fe2ba03af79a9b3dde1f26878d5d2";
  };

  checkInputs = [ geometry-msgs ];
  propagatedBuildInputs = [ flexbe-msgs flexbe-testing rospy rosbag smach-ros ];
  nativeBuildInputs = [ rostest catkin ];

  meta = {
    description = ''flexbe_states provides a collection of predefined states.
     Feel free to add new states.'';
    #license = lib.licenses.BSD;
  };
}

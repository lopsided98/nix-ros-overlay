
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, rosbag, catkin, smach-ros, rostest, flexbe-testing, rospy, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-states";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_states/1.1.1-0.tar.gz;
    sha256 = "b6e7c4bdce6328d8ab17c8294bf34af1cb0f6accc5966c65a5afe80751b89fcb";
  };

  buildInputs = [ rostest ];
  checkInputs = [ geometry-msgs ];
  propagatedBuildInputs = [ flexbe-msgs flexbe-testing rospy rosbag smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_states provides a collection of predefined states.
     Feel free to add new states.'';
    #license = lib.licenses.BSD;
  };
}

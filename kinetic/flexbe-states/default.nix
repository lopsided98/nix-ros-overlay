
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, rosbag, catkin, smach-ros, rostest, flexbe-testing, rospy, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-states";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_states/1.1.2-0.tar.gz;
    sha256 = "1d44c35e6a8261acc642d2f2004c2e5def10ce311315af19a261d84c4d0a31a6";
  };

  buildInputs = [ rostest ];
  checkInputs = [ geometry-msgs ];
  propagatedBuildInputs = [ flexbe-msgs rosbag smach-ros flexbe-testing rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_states provides a collection of predefined states.
     Feel free to add new states.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

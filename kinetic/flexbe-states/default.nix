
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, rosbag, catkin, smach-ros, rostest, flexbe-testing, rospy, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-states";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_states/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "9437e3b828006c62f4333e08143298c941fee279d15e8328af79d612a1b4d32f";
  };

  buildType = "catkin";
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

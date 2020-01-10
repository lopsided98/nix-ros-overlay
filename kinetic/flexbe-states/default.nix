
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-msgs, flexbe-testing, geometry-msgs, rosbag, rospy, rostest, smach-ros }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-states";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_states/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "a142828502bd05fb8c25044c85597542a9c5e05f69d475d4eea848f94121d772";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ geometry-msgs ];
  propagatedBuildInputs = [ flexbe-msgs flexbe-testing rosbag rospy smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_states provides a collection of predefined states.
     Feel free to add new states.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

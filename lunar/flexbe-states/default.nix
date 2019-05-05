
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, rosbag, catkin, smach-ros, rostest, flexbe-testing, rospy, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-flexbe-states";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/lunar/flexbe_states/1.1.2-0.tar.gz;
    sha256 = "e5584ac05b765cc45fc3a82d8bd619e71581ffecea5679f1a1455d660bfdcc2a";
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

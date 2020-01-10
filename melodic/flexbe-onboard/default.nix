
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-msgs, rospy, smach-ros }:
buildRosPackage {
  pname = "ros-melodic-flexbe-onboard";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_onboard/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "834f106732efdadb8b8bd5df9d79feffb0f2cdcff13209eb626fb8faa52903cb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rospy smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_onboard implements the robot-side of the behavior engine from where all behaviors are started.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

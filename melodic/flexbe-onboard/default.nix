
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-msgs, rospy, smach-ros }:
buildRosPackage {
  pname = "ros-melodic-flexbe-onboard";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_onboard/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "32f2c2d1845abe5bcdcb1f399350a4659b7ae5be1d4f7a0dd1fb1b5d3aee5d9d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rospy smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_onboard implements the robot-side of the behavior engine from where all behaviors are started.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

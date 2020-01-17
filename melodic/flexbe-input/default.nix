
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, flexbe-msgs, rospy, smach-ros }:
buildRosPackage {
  pname = "ros-melodic-flexbe-input";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_input/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "f67450ffc384ded4721851e15457b372481df29f1fea066cd6ea496f1d49f4ed";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib flexbe-msgs rospy smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_input enables to send data to onboard behavior when required.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

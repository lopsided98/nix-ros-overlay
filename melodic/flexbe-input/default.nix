
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, actionlib, rospy }:
buildRosPackage {
  pname = "ros-melodic-flexbe-input";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_input/1.1.2-0.tar.gz;
    sha256 = "0ebbf1d4e17a6a51d7699e23869d3e7741220a0e18a80114979f4c67d23106be";
  };

  buildInputs = [ actionlib ];
  propagatedBuildInputs = [ flexbe-msgs smach-ros actionlib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_input enables to send data to onboard behavior when required.'';
    #license = lib.licenses.BSD;
  };
}

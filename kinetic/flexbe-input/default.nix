
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, actionlib, rospy }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-input";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_input/1.1.1-0.tar.gz;
    sha256 = "7c2af578decbe67fb28631ef009ec0bf4b0de64a6f814d60a7ec36c7da1e53b5";
  };

  buildInputs = [ actionlib ];
  propagatedBuildInputs = [ flexbe-msgs smach-ros actionlib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_input enables to send data to onboard behavior when required.'';
    #license = lib.licenses.BSD;
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, actionlib, rospy }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-input";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_input/1.1.2-0.tar.gz;
    sha256 = "ca80f2a64a0ca4b188ec7ef87bd82673c8d91ed914b56ca461880506c4d48262";
  };

  buildInputs = [ actionlib ];
  propagatedBuildInputs = [ flexbe-msgs smach-ros actionlib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_input enables to send data to onboard behavior when required.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

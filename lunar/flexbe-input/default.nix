
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, actionlib, rospy }:
buildRosPackage {
  pname = "ros-lunar-flexbe-input";
  version = "1.2.1-r1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/lunar/flexbe_input/1.2.1-1.tar.gz;
    sha256 = "8e138e0558e29807052894ec48d7f90bfded925ddd758fa58a776bd0defded73";
  };

  buildInputs = [ actionlib ];
  propagatedBuildInputs = [ flexbe-msgs smach-ros actionlib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_input enables to send data to onboard behavior when required.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

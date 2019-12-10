
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, flexbe-msgs, rospy, smach-ros }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-input";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_input/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "bc6c1045b8caf3a87f19c64637d4bcdb71b1b1246f63c4a5c61c3100b0bc77e1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib flexbe-msgs rospy smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_input enables to send data to onboard behavior when required.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, flexbe-msgs, rospy, smach-ros }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-input";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_input/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "b0b6158004aae220e4b9b8f8410b1bef3bc60e499586d1a3c59b63171083f967";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib flexbe-msgs rospy smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_input enables to send data to onboard behavior when required.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-msgs, rospy, smach-ros }:
buildRosPackage {
  pname = "ros-melodic-flexbe-mirror";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_mirror/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "7cada5e532a6b51657b8dc5c718bf941b82b3b610406730d5a26e9c0f2ac938d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rospy smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_mirror implements functionality to remotely mirror an executed behavior.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

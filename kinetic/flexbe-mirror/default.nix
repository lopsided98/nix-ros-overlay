
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-msgs, rospy, smach-ros }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-mirror";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_mirror/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "81ad28b1f0fb458af4e37c60cb0017f8115e58ffd84b85a3e4b32644d9f307d6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rospy smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_mirror implements functionality to remotely mirror an executed behavior.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

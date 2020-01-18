
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, flexbe-msgs, rospy, smach-ros, tf }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-core";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_core/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "0a2b6b6622e61c48a8eeab2c2a40c3837e430fd14c8b9fd966aa7877e8488bbd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs flexbe-msgs rospy smach-ros tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_core provides the core smach extension for the FlexBE behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

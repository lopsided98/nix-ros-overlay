
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, flexbe-msgs, rospy, smach-ros, tf }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-core";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_core/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "022c44d36238d53b21d46e7d34096cce898f23a460366f6fd21522b1669a6b9c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs flexbe-msgs rospy smach-ros tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_core provides the core smach extension for the FlexBE behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

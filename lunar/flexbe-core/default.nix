
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, rospy, diagnostic-msgs, tf }:
buildRosPackage {
  pname = "ros-lunar-flexbe-core";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/lunar/flexbe_core/1.1.2-0.tar.gz;
    sha256 = "cd437a3a17ababaa09fa7e789fa6b1552f761cfe308849ace39ccb302cda8d9e";
  };

  propagatedBuildInputs = [ flexbe-msgs smach-ros rospy diagnostic-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_core provides the core smach extension for the FlexBE behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

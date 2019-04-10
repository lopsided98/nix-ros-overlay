
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, rospy, diagnostic-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-flexbe-core";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_core/1.1.2-0.tar.gz;
    sha256 = "f19ccc2536fae3f36bf6b73761b9912e7b9b457ffe973d00574430a33fb123b1";
  };

  propagatedBuildInputs = [ flexbe-msgs rospy diagnostic-msgs tf smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_core provides the core smach extension for the FlexBE behavior engine.'';
    #license = lib.licenses.BSD;
  };
}

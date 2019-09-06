
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, rospy, diagnostic-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-core";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_core/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "b135b05ce4166bbfcd9a67631b7b5f2facf91ec33163e7c325d4e4a797982da8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-msgs smach-ros rospy diagnostic-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_core provides the core smach extension for the FlexBE behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

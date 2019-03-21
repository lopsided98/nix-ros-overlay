
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, flexbe-widget, rospy, flexbe-core }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-mirror";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_mirror/1.1.1-0.tar.gz;
    sha256 = "ef2a9adc1b0b70729a624339e2fb478a07d1cf78bc68893e398adb1e327600a9";
  };

  propagatedBuildInputs = [ flexbe-widget flexbe-msgs rospy smach-ros flexbe-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_mirror implements functionality to remotely mirror an executed behavior.'';
    #license = lib.licenses.BSD;
  };
}

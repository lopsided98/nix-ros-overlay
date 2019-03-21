
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, flexbe-widget, rospy, flexbe-core }:
buildRosPackage {
  pname = "ros-melodic-flexbe-mirror";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_mirror/1.1.1-0.tar.gz;
    sha256 = "a66ea44a5eaa6b4ac444918e78f7e11251bab2a9c097c282b7dae00576d903c2";
  };

  propagatedBuildInputs = [ flexbe-widget flexbe-msgs rospy smach-ros flexbe-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_mirror implements functionality to remotely mirror an executed behavior.'';
    #license = lib.licenses.BSD;
  };
}

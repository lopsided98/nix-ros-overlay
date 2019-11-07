
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, flexbe-widget, rospy, flexbe-core }:
buildRosPackage {
  pname = "ros-melodic-flexbe-mirror";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_mirror/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "7f9f4ad139201af0366254fb0f2fc7b3b4120a4b3c0dab729b03ef5f30a14339";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-msgs smach-ros flexbe-widget rospy flexbe-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_mirror implements functionality to remotely mirror an executed behavior.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

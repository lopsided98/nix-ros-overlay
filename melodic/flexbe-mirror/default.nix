
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-core, catkin, flexbe-widget, smach-ros, flexbe-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-flexbe-mirror";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_mirror/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "7f9f4ad139201af0366254fb0f2fc7b3b4120a4b3c0dab729b03ef5f30a14339";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-core flexbe-widget smach-ros flexbe-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_mirror implements functionality to remotely mirror an executed behavior.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

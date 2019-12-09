
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-core, catkin, flexbe-widget, smach-ros, flexbe-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-mirror";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_mirror/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "02940d31bb8d12bacd81128a749d93bf8a5c5f466a3df61b7c4efb6607351dd9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-core flexbe-widget smach-ros flexbe-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_mirror implements functionality to remotely mirror an executed behavior.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

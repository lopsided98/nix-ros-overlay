
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, asmach, catkin, message-generation, rospy, smach-ros, turtlesim }:
buildRosPackage {
  pname = "ros-kinetic-asmach-tutorials";
  version = "1.0.15";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/asmach_tutorials/1.0.15-0.tar.gz";
    name = "1.0.15-0.tar.gz";
    sha256 = "6f8d206898a3a4c7acb1efd2e357e3aa10708393bf55780fa47685c2a5d916a4";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs asmach rospy smach-ros turtlesim ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package containes numerous examples of how to use SMACH. See the examples directory.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

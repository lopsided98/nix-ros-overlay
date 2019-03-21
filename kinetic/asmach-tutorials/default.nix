
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlesim, actionlib-msgs, catkin, smach-ros, message-generation, asmach, actionlib, rospy }:
buildRosPackage {
  pname = "ros-kinetic-asmach-tutorials";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/asmach_tutorials/1.0.15-0.tar.gz;
    sha256 = "6f8d206898a3a4c7acb1efd2e357e3aa10708393bf55780fa47685c2a5d916a4";
  };

  propagatedBuildInputs = [ turtlesim actionlib asmach actionlib-msgs rospy smach-ros ];
  nativeBuildInputs = [ turtlesim message-generation actionlib asmach actionlib-msgs rospy catkin smach-ros ];

  meta = {
    description = ''This package containes numerous examples of how to use SMACH. See the examples directory.'';
    #license = lib.licenses.BSD;
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlesim, actionlib-msgs, catkin, smach-ros, message-generation, asmach, actionlib, rospy }:
buildRosPackage {
  pname = "ros-melodic-asmach-tutorials";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/asmach_tutorials/1.0.15-0.tar.gz;
    sha256 = "f4ac426256f77af184a3f5e595d6cc2e035caa9146e810e86f0049f0f1e44aea";
  };

  buildInputs = [ turtlesim message-generation actionlib asmach actionlib-msgs rospy smach-ros ];
  propagatedBuildInputs = [ turtlesim actionlib asmach actionlib-msgs rospy smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package containes numerous examples of how to use SMACH. See the examples directory.'';
    #license = lib.licenses.BSD;
  };
}

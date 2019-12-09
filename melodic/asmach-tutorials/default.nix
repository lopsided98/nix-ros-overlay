
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, turtlesim, actionlib, catkin, smach-ros, asmach, actionlib-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-asmach-tutorials";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/asmach_tutorials/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "d4a5d35e1424c9a9e17f9a66b1bbea3de63f71d037df9cc932cf28f62c00f69e";
  };

  buildType = "catkin";
  buildInputs = [ turtlesim actionlib smach-ros asmach actionlib-msgs rospy message-generation ];
  propagatedBuildInputs = [ turtlesim actionlib smach-ros asmach actionlib-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package containes numerous examples of how to use SMACH. See the examples directory.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, turtlesim, actionlib, catkin, smach-ros, asmach, actionlib-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-asmach-tutorials";
  version = "1.0.15";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/asmach_tutorials/1.0.15-0.tar.gz";
    name = "1.0.15-0.tar.gz";
    sha256 = "6f8d206898a3a4c7acb1efd2e357e3aa10708393bf55780fa47685c2a5d916a4";
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

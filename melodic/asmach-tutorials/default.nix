
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlesim, actionlib-msgs, catkin, smach-ros, message-generation, asmach, actionlib, rospy }:
buildRosPackage {
  pname = "ros-melodic-asmach-tutorials";
  version = "1.0.13-r2";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/asmach_tutorials/1.0.13-2.tar.gz;
    sha256 = "ca0024ddfd9f62f4c76291300d9cf50e15fbc87e64af3823255db33e4285792e";
  };

  buildInputs = [ turtlesim actionlib-msgs smach-ros message-generation asmach actionlib rospy ];
  propagatedBuildInputs = [ turtlesim actionlib-msgs smach-ros actionlib asmach rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package containes numerous examples of how to use SMACH. See the examples directory.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

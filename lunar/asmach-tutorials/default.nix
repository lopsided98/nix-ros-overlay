
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlesim, actionlib-msgs, catkin, smach-ros, message-generation, asmach, actionlib, rospy }:
buildRosPackage {
  pname = "ros-lunar-asmach-tutorials";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/lunar/asmach_tutorials/1.0.15-0.tar.gz;
    sha256 = "308a5acf5ac347184b6a31144bb79b37a8b1ab53e250e597c58147e8389461f7";
  };

  buildInputs = [ turtlesim actionlib-msgs smach-ros message-generation asmach actionlib rospy ];
  propagatedBuildInputs = [ turtlesim actionlib-msgs smach-ros actionlib asmach rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package containes numerous examples of how to use SMACH. See the examples directory.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

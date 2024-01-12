
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, boost, catkin, message-generation, message-runtime, roscpp, rosnode, rospy, rostest, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-actionlib";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/actionlib-release/archive/release/noetic/actionlib/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "cc2f1a34e4fc117f845a8ee44102ac3e2bfeb7d9de2a448d741641f6923cb203";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ rosnode rosunit ];
  propagatedBuildInputs = [ actionlib-msgs boost message-runtime roscpp rospy rostest std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The actionlib stack provides a standardized interface for
    interfacing with preemptable tasks. Examples of this include moving
    the base to a target location, performing a laser scan and returning
    the resulting point cloud, detecting the handle of a door, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

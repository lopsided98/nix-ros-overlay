
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, boost, catkin, message-generation, message-runtime, pythonPackages, roscpp, roslib, rosnode, rospy, rostest, rostopic, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-actionlib";
  version = "1.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/actionlib-release/archive/release/melodic/actionlib/1.12.1-1.tar.gz";
    name = "1.12.1-1.tar.gz";
    sha256 = "1c564f0186928a554d30a74c1bdffcbc52292ff93d7a5c8140ec4bce342ae020";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ rosnode ];
  propagatedBuildInputs = [ actionlib-msgs boost message-runtime pythonPackages.wxPython roscpp roslib rospy rostest rostopic std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The actionlib stack provides a standardized interface for
    interfacing with preemptable tasks. Examples of this include moving
    the base to a target location, performing a laser scan and returning
    the resulting point cloud, detecting the handle of a door, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

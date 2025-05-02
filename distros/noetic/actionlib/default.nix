
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, boost, catkin, message-generation, message-runtime, roscpp, rosnode, rospy, rostest, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-actionlib";
  version = "1.14.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/actionlib-release/archive/release/noetic/actionlib/1.14.2-1.tar.gz";
    name = "1.14.2-1.tar.gz";
    sha256 = "cf82d6a92f2592c19789ec8f7e5744a6f348106ed5be6eef4019522974a8127c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ rosnode rosunit ];
  propagatedBuildInputs = [ actionlib-msgs boost message-runtime roscpp rospy rostest std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The actionlib stack provides a standardized interface for
    interfacing with preemptable tasks. Examples of this include moving
    the base to a target location, performing a laser scan and returning
    the resulting point cloud, detecting the handle of a door, etc.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, boost, catkin, message-generation, message-runtime, roscpp, rosnode, rospy, rostest, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-actionlib";
  version = "1.13.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/actionlib-release/archive/release/noetic/actionlib/1.13.1-1.tar.gz";
    name = "1.13.1-1.tar.gz";
    sha256 = "5eec74c03d8791edc4d7af45b4981ebc58a0223ae8a5a0c0b6794403b124d493";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
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

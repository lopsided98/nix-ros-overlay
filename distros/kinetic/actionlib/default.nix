
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, boost, catkin, message-generation, message-runtime, pythonPackages, roscpp, roslib, rosnode, rospy, rostest, rostopic, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-actionlib";
  version = "1.11.16-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/actionlib-release/archive/release/kinetic/actionlib/1.11.16-2.tar.gz";
    name = "1.11.16-2.tar.gz";
    sha256 = "0ff39842bcee2355f1c662945e59ef26a1f69fcace289f8d6ff856e0893f63b5";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
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

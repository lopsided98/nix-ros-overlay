
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, boost, std-msgs, rosnode, pythonPackages, roslib, rostopic, catkin, actionlib-msgs, rospy, roscpp, message-runtime, rostest }:
buildRosPackage {
  pname = "ros-kinetic-actionlib";
  version = "1.11.13";

  src = fetchurl {
    url = "https://github.com/ros-gbp/actionlib-release/archive/release/kinetic/actionlib/1.11.13-0.tar.gz";
    name = "1.11.13-0.tar.gz";
    sha256 = "20904f8215d1cc39a6e30fee69a1c964a02dbf4a2f931e56d12fc8850d13d235";
  };

  buildType = "catkin";
  buildInputs = [ boost std-msgs actionlib-msgs rospy roscpp message-generation rostest ];
  checkInputs = [ rosnode ];
  propagatedBuildInputs = [ boost std-msgs pythonPackages.wxPython roslib rostopic actionlib-msgs rospy roscpp message-runtime rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The actionlib stack provides a standardized interface for
    interfacing with preemptable tasks. Examples of this include moving
    the base to a target location, performing a laser scan and returning
    the resulting point cloud, detecting the handle of a door, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

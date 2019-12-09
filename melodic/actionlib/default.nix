
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, boost, std-msgs, rosnode, pythonPackages, roslib, rostopic, catkin, actionlib-msgs, rospy, roscpp, message-runtime, rostest }:
buildRosPackage {
  pname = "ros-melodic-actionlib";
  version = "1.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/actionlib-release/archive/release/melodic/actionlib/1.12.0-1.tar.gz";
    name = "1.12.0-1.tar.gz";
    sha256 = "cf5019b5b23a1aa16c1ad5afc47ce10630a512cdc621c926bc1920803dac9ca5";
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

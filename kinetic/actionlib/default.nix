
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, actionlib-msgs, catkin, pythonPackages, roscpp, rostest, message-generation, message-runtime, rostopic, rospy, std-msgs, roslib, rosnode }:
buildRosPackage {
  pname = "ros-kinetic-actionlib";
  version = "1.11.13";

  src = fetchurl {
    url = "https://github.com/ros-gbp/actionlib-release/archive/release/kinetic/actionlib/1.11.13-0.tar.gz";
    name = "1.11.13-0.tar.gz";
    sha256 = "20904f8215d1cc39a6e30fee69a1c964a02dbf4a2f931e56d12fc8850d13d235";
  };

  buildType = "catkin";
  buildInputs = [ boost actionlib-msgs rostest message-generation rospy std-msgs roscpp ];
  checkInputs = [ rosnode ];
  propagatedBuildInputs = [ boost actionlib-msgs pythonPackages.wxPython rostest roslib message-runtime rostopic rospy std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The actionlib stack provides a standardized interface for
    interfacing with preemptable tasks. Examples of this include moving
    the base to a target location, performing a laser scan and returning
    the resulting point cloud, detecting the handle of a door, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

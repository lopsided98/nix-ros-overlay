
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, actionlib-msgs, catkin, pythonPackages, roscpp, rostest, message-generation, message-runtime, rostopic, rospy, std-msgs, roslib, rosnode }:
buildRosPackage {
  pname = "ros-melodic-actionlib";
  version = "1.11.13";

  src = fetchurl {
    url = https://github.com/ros-gbp/actionlib-release/archive/release/melodic/actionlib/1.11.13-0.tar.gz;
    sha256 = "7b6d1fba25d1f4de6d3b87d82cac1aae73a88bc4811e7e55626f9b21db34f99c";
  };

  buildInputs = [ rostest message-generation boost actionlib-msgs rospy std-msgs roscpp ];
  checkInputs = [ rosnode ];
  propagatedBuildInputs = [ boost actionlib-msgs pythonPackages.wxPython rostest roslib message-runtime rostopic rospy std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The actionlib stack provides a standardized interface for
    interfacing with preemptable tasks. Examples of this include moving
    the base to a target location, performing a laser scan and returning
    the resulting point cloud, detecting the handle of a door, etc.'';
    #license = lib.licenses.BSD;
  };
}

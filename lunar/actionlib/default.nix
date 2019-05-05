
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, actionlib-msgs, catkin, pythonPackages, roscpp, rostest, message-generation, message-runtime, rostopic, rospy, std-msgs, roslib, rosnode }:
buildRosPackage {
  pname = "ros-lunar-actionlib";
  version = "1.11.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/actionlib-release/archive/release/lunar/actionlib/1.11.15-0.tar.gz;
    sha256 = "fda9dfebee41bcda0c90d734076e0091657bfb2717d922d7b9bc07b65f871d31";
  };

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


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, python3Packages, roslib, rospy, rostopic }:
buildRosPackage {
  pname = "ros-noetic-actionlib-tools";
  version = "1.14.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/actionlib-release/archive/release/noetic/actionlib_tools/1.14.3-1.tar.gz";
    name = "1.14.3-1.tar.gz";
    sha256 = "318fc57255c0e707ab653c620c3b693fc9534549c2a5be66b9995d6841bf3de8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs python3Packages.wxPython_4_0 roslib rospy rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The actionlib_tools package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

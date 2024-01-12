
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, python3Packages, roslib, rospy, rostopic }:
buildRosPackage {
  pname = "ros-noetic-actionlib-tools";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/actionlib-release/archive/release/noetic/actionlib_tools/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "cb6b03293d18061e310738bd3aa2f7c3a2114879c5b653969f55770579f878ef";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs python3Packages.wxPython_4_0 roslib rospy rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The actionlib_tools package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, python3Packages, roslib, rospy, rostopic }:
buildRosPackage {
  pname = "ros-noetic-actionlib-tools";
  version = "1.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/actionlib-release/archive/release/noetic/actionlib_tools/1.14.1-1.tar.gz";
    name = "1.14.1-1.tar.gz";
    sha256 = "7634b0137a2afaaa03a117108b8315ffdc2211750eb9edd78bf6619a7d135ba1";
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

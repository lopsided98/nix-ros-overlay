
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, python3Packages, roslib, rospy, rostopic }:
buildRosPackage {
  pname = "ros-noetic-actionlib-tools";
  version = "1.14.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/actionlib-release/archive/release/noetic/actionlib_tools/1.14.2-1.tar.gz";
    name = "1.14.2-1.tar.gz";
    sha256 = "00c178fa0baf400f9dbee7663cfeb84aee4b93249748b3e0c75b339a5be390ac";
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

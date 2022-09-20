
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, python3Packages, roslib, rospy, rostopic }:
buildRosPackage {
  pname = "ros-noetic-actionlib-tools";
  version = "1.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/actionlib-release/archive/release/noetic/actionlib_tools/1.13.2-1.tar.gz";
    name = "1.13.2-1.tar.gz";
    sha256 = "f90394ff8b67a8685c594059311f4d7a524c73d512c8653127025baea8e5c6c7";
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

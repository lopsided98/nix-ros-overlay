
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, roslib, rospy, rostopic }:
buildRosPackage {
  pname = "ros-noetic-actionlib-tools";
  version = "1.13.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/actionlib-release/archive/release/noetic/actionlib_tools/1.13.1-1.tar.gz";
    name = "1.13.1-1.tar.gz";
    sha256 = "577d4b364e54a8e1467364750eb978ca35b762f6722398ef04f89188202d3e26";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs roslib rospy rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The actionlib_tools package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

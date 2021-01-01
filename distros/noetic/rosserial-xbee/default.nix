
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, python3Packages, rospy, rosserial-msgs, rosserial-python }:
buildRosPackage {
  pname = "ros-noetic-rosserial-xbee";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_xbee/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "8dad77c8163b660cf568f4c61395f47d5dbd3f990ff520c88c783588ffd2ded0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs python3Packages.pyserial rospy rosserial-msgs rosserial-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Allows multipoint communication between rosserial
     nodes connected to an xbee. All nodes communicate back
     to a master xbee connected to a computer running ROS.

     This software currently only works with Series 1 Xbees.

     This pkg includes python code from the python-xbee project:
     http://code.google.com/p/python-xbee/'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

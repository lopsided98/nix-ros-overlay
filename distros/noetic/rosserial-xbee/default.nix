
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, python3Packages, rospy, rosserial-msgs, rosserial-python }:
buildRosPackage {
  pname = "ros-noetic-rosserial-xbee";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_xbee/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "48bd401b187d431fad426d14556f2b39f3e9bb18fe0d77c4a59de7709c33bfb4";
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

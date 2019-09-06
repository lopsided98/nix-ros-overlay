
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, rospack, boost, rosbash, cmake-modules, rosfmt, libyamlcpp, catkin, pythonPackages, tinyxml, rostest, roslib, ncurses, catch-ros, std-msgs, diagnostic-msgs, roscpp, rosmon-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosmon-core";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/kinetic/rosmon_core/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "204b5172290fd99a412014360ffd5b1a1141ccb6e0f8e38d30a16a336b9722ae";
  };

  buildType = "catkin";
  buildInputs = [ python rospack boost rosbash cmake-modules rosfmt libyamlcpp tinyxml roslib ncurses std-msgs diagnostic-msgs roscpp rosmon-msgs ];
  checkInputs = [ pythonPackages.rospkg rostest catch-ros ];
  propagatedBuildInputs = [ rospack cmake-modules boost rosbash rosfmt libyamlcpp tinyxml roslib ncurses std-msgs diagnostic-msgs roscpp rosmon-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node launcher and monitor for ROS. rosmon is a replacement
		for the roslaunch tool, focused on performance, remote
		monitoring, and usability.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

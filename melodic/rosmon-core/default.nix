
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, rospack, boost, rosbash, cmake-modules, rosfmt, libyamlcpp, catkin, pythonPackages, tinyxml, rostest, roslib, ncurses, catch-ros, std-msgs, diagnostic-msgs, roscpp, rosmon-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosmon-core";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/melodic/rosmon_core/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "3aa96849e40110d129d3e2066cf79173bad441585bd87f75e4d9c4c85f8a4084";
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


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, rospack, boost, rosbash, cmake-modules, rosfmt, libyamlcpp, catkin, pythonPackages, tinyxml, rostest, roslib, ncurses, catch-ros, std-msgs, roscpp, rosmon-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosmon-core";
  version = "2.0.2";

  src = fetchurl {
    url = https://github.com/xqms/rosmon-release/archive/release/melodic/rosmon_core/2.0.2-0.tar.gz;
    sha256 = "c9df5410c3df7a9dcb31b219add879887508c4e2208206df6291389a8d4ed682";
  };

  buildInputs = [ python rospack boost rosbash cmake-modules rosfmt libyamlcpp tinyxml roslib ncurses std-msgs roscpp rosmon-msgs ];
  checkInputs = [ pythonPackages.rospkg rostest catch-ros ];
  propagatedBuildInputs = [ rospack boost rosbash cmake-modules rosfmt libyamlcpp tinyxml roslib ncurses std-msgs roscpp rosmon-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node launcher and monitor for ROS. rosmon is a replacement
		for the roslaunch tool, focused on performance, remote
		monitoring, and usability.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

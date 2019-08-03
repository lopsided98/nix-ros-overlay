
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, rospack, boost, rosbash, cmake-modules, rosfmt, libyamlcpp, catkin, pythonPackages, tinyxml, rostest, roslib, ncurses, catch-ros, std-msgs, diagnostic-msgs, roscpp, rosmon-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosmon-core";
  version = "2.1.1-r1";

  src = fetchurl {
    url = https://github.com/xqms/rosmon-release/archive/release/melodic/rosmon_core/2.1.1-1.tar.gz;
    sha256 = "eda6b1f4a31cac71c3f3f46bd154284891ce44f8f406cf165d64a1b008785b2e";
  };

  buildInputs = [ python rospack boost rosbash cmake-modules rosfmt libyamlcpp tinyxml roslib ncurses std-msgs diagnostic-msgs roscpp rosmon-msgs ];
  checkInputs = [ pythonPackages.rospkg rostest catch-ros ];
  propagatedBuildInputs = [ rospack boost rosbash cmake-modules rosfmt libyamlcpp tinyxml roslib ncurses std-msgs diagnostic-msgs roscpp rosmon-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node launcher and monitor for ROS. rosmon is a replacement
		for the roslaunch tool, focused on performance, remote
		monitoring, and usability.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

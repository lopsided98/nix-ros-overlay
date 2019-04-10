
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, rospack, boost, rosbash, cmake-modules, libyamlcpp, rqt-gui, pythonPackages, catkin, rostest, roslib, message-generation, rqt-gui-cpp, ncurses, qt5, std-msgs, catch-ros, roscpp }:
buildRosPackage {
  pname = "ros-lunar-rosmon";
  version = "1.0.10";

  src = fetchurl {
    url = https://github.com/xqms/rosmon-release/archive/release/lunar/rosmon/1.0.10-0.tar.gz;
    sha256 = "e098f00188332c7354a58c2ab8ef8e4ad2a5c0474cc0a7486ebbfe871cb1a87e";
  };

  buildInputs = [ python rospack boost rosbash cmake-modules libyamlcpp rqt-gui qt5.qtbase roslib message-generation rqt-gui-cpp ncurses std-msgs roscpp ];
  checkInputs = [ pythonPackages.rospkg rostest catch-ros ];
  propagatedBuildInputs = [ rospack boost rosbash cmake-modules libyamlcpp rqt-gui roslib message-generation rqt-gui-cpp ncurses std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node launcher and monitor for ROS. rosmon is a replacement
		for the roslaunch tool, focused on performance, remote
		monitoring, and usability.'';
    #license = lib.licenses.BSD;
  };
}

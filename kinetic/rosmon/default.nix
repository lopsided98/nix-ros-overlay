
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, rospack, boost, rosbash, cmake-modules, libyamlcpp, rqt-gui, pythonPackages, catkin, rostest, roslib, message-generation, rqt-gui-cpp, ncurses, qt5, std-msgs, catch-ros, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rosmon";
  version = "1.0.10";

  src = fetchurl {
    url = https://github.com/xqms/rosmon-release/archive/release/kinetic/rosmon/1.0.10-0.tar.gz;
    sha256 = "8518757f656368a959cbdb9f8af2df9d0ee8640bf26deebfc07776600e8205c5";
  };

  buildInputs = [ python rospack boost rosbash cmake-modules libyamlcpp rqt-gui qt5.qtbase roslib message-generation rqt-gui-cpp ncurses std-msgs roscpp ];
  checkInputs = [ pythonPackages.rospkg rostest catch-ros ];
  propagatedBuildInputs = [ rospack boost rosbash cmake-modules libyamlcpp rqt-gui roslib message-generation rqt-gui-cpp ncurses std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node launcher and monitor for ROS. rosmon is a replacement
		for the roslaunch tool, focused on performance, remote
		monitoring, and usability.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

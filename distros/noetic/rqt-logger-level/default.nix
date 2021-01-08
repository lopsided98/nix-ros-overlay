
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, rosnode, rospy, rosservice, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-logger-level";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_logger_level-release/archive/release/noetic/rqt_logger_level/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "4048c4d54ffe875a97ad927ce8b00658a17ea685624dcd0fb6a62b4106dd8ea3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg rosnode rospy rosservice rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_logger_level provides a GUI plugin for configuring the logger level of ROS nodes.<br/>
   <br/>
  rqt_logger_level takes over `wx`-based tool [[rxloggerlevel]].'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

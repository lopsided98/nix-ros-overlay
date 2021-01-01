
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, rosnode, rospy, rosservice, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-kinetic-rqt-logger-level";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_logger_level-release/archive/release/kinetic/rqt_logger_level/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "33884e98688fa012df84177c72c4850ba159bfc6c0cee6b2b595642c3e6d3575";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg rosnode rospy rosservice rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_logger_level provides a GUI plugin for configuring the logger level of ROS nodes.<br/>
   <br/>
  rqt_logger_level takes over `wx`-based tool [[rxloggerlevel]].'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

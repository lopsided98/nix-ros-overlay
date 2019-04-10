
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, pythonPackages, rosservice, rospy, python-qt-binding, rosnode }:
buildRosPackage {
  pname = "ros-lunar-rqt-logger-level";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_logger_level-release/archive/release/lunar/rqt_logger_level/0.4.8-0.tar.gz;
    sha256 = "4223103aa11dea9a75a600dc72a35129430a96adc51f606d2130dc27bc24664c";
  };

  propagatedBuildInputs = [ rqt-gui-py rospy pythonPackages.rospkg rqt-gui python-qt-binding rosservice rosnode ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_logger_level provides a GUI plugin for configuring the logger level of ROS nodes.<br/>
   <br/>
  rqt_logger_level takes over `wx`-based tool [[rxloggerlevel]].'';
    #license = lib.licenses.BSD;
  };
}

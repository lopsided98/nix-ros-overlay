
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, rosnode, rospy, rosservice, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-logger-level";
  version = "0.4.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_logger_level-release/archive/release/noetic/rqt_logger_level/0.4.12-1.tar.gz";
    name = "0.4.12-1.tar.gz";
    sha256 = "cff5ad8cdb8089e87fee61958e967d032ccd81798af6bf4b1a7236b258b53f05";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg rosnode rospy rosservice rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''rqt_logger_level provides a GUI plugin for configuring the logger level of ROS nodes.<br/>
   <br/>
  rqt_logger_level takes over `wx`-based tool [[rxloggerlevel]].'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, rosnode, rospy, rosservice, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-logger-level";
  version = "0.4.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_logger_level-release/archive/release/noetic/rqt_logger_level/0.4.13-1.tar.gz";
    name = "0.4.13-1.tar.gz";
    sha256 = "b9c7c82ba81a24c50a104747fd9717b62056f149bbfe57807686e9706b681a0f";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg rosnode rospy rosservice rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rqt_logger_level provides a GUI plugin for configuring the logger level of ROS nodes.<br/>
   <br/>
  rqt_logger_level takes over `wx`-based tool [[rxloggerlevel]].";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, roslib, rospy, rqt-gui, rqt-gui-py, rqt-logger-level, rqt-py-common }:
buildRosPackage {
  pname = "ros-noetic-rqt-console";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_console-release/archive/release/noetic/rqt_console/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "f2fed22a56e9c85c5092337ad2b1c043f28e548b82ab9d2eb5514089552ffb94";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg roslib rospy rqt-gui rqt-gui-py rqt-logger-level rqt-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_console provides a GUI plugin for displaying and filtering ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

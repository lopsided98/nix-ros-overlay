
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, roslib, rospy, rqt-gui, rqt-gui-py, rqt-logger-level, rqt-py-common }:
buildRosPackage {
  pname = "ros-noetic-rqt-console";
  version = "0.4.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_console-release/archive/release/noetic/rqt_console/0.4.12-1.tar.gz";
    name = "0.4.12-1.tar.gz";
    sha256 = "9d28654f41fb82fc298140b8ea5b7041b15d5ade3bccc467b01f7b1763be1c36";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg roslib rospy rqt-gui rqt-gui-py rqt-logger-level rqt-py-common ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''rqt_console provides a GUI plugin for displaying and filtering ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

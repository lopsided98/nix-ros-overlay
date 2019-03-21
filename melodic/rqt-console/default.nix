
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, rqt-logger-level, pythonPackages, rospy, rqt-py-common, roslib, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-rqt-console";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_console-release/archive/release/melodic/rqt_console/0.4.8-0.tar.gz;
    sha256 = "bd66d6c711910fb8db8804b403bf5cedcce83ecfc82eaa4c12afb5e035a6eeb3";
  };

  propagatedBuildInputs = [ rqt-gui-py roslib rqt-logger-level rospy pythonPackages.rospkg rqt-py-common rqt-gui python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_console provides a GUI plugin for displaying and filtering ROS messages.'';
    #license = lib.licenses.BSD;
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, catkin, rqt-gui, pythonPackages, rqt-logger-level, rospy, rqt-py-common, roslib, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-rqt-console";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_console-release/archive/release/melodic/rqt_console/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "bd66d6c711910fb8db8804b403bf5cedcce83ecfc82eaa4c12afb5e035a6eeb3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rqt-gui rqt-logger-level rospy rqt-py-common roslib python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_console provides a GUI plugin for displaying and filtering ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

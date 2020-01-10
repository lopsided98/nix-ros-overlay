
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, roslib, rospy, rqt-gui, rqt-gui-py, rqt-logger-level, rqt-py-common }:
buildRosPackage {
  pname = "ros-melodic-rqt-console";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_console-release/archive/release/melodic/rqt_console/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "bd66d6c711910fb8db8804b403bf5cedcce83ecfc82eaa4c12afb5e035a6eeb3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg roslib rospy rqt-gui rqt-gui-py rqt-logger-level rqt-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_console provides a GUI plugin for displaying and filtering ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, catkin, rqt-gui, pythonPackages, rqt-logger-level, rospy, rqt-py-common, roslib, python-qt-binding }:
buildRosPackage {
  pname = "ros-lunar-rqt-console";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_console-release/archive/release/lunar/rqt_console/0.4.8-0.tar.gz;
    sha256 = "b0bba8b42087042d813646bb084b3a69202dd28dc71f048414da7f16ab30c0ec";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rqt-gui rqt-logger-level rospy rqt-py-common roslib python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_console provides a GUI plugin for displaying and filtering ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

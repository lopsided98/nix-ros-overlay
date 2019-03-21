
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, rqt-logger-level, pythonPackages, rospy, rqt-py-common, roslib, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-rqt-console";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_console-release/archive/release/kinetic/rqt_console/0.4.8-0.tar.gz;
    sha256 = "5c1685fb32ec44daadfabf5ac6c0a7423694b7ebe8256ce05556fde892dbf47c";
  };

  propagatedBuildInputs = [ rqt-gui-py roslib rqt-logger-level rospy pythonPackages.rospkg rqt-py-common rqt-gui python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_console provides a GUI plugin for displaying and filtering ROS messages.'';
    #license = lib.licenses.BSD;
  };
}

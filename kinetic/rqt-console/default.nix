
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, catkin, rqt-gui, pythonPackages, rqt-logger-level, rospy, rqt-py-common, roslib, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-rqt-console";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_console-release/archive/release/kinetic/rqt_console/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "5c1685fb32ec44daadfabf5ac6c0a7423694b7ebe8256ce05556fde892dbf47c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rqt-gui rqt-logger-level rospy rqt-py-common roslib python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_console provides a GUI plugin for displaying and filtering ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

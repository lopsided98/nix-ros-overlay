
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, roslib, rospy, rqt-gui, rqt-gui-py, rqt-logger-level, rqt-py-common }:
buildRosPackage {
  pname = "ros-kinetic-rqt-console";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_console-release/archive/release/kinetic/rqt_console/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "5c1685fb32ec44daadfabf5ac6c0a7423694b7ebe8256ce05556fde892dbf47c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg roslib rospy rqt-gui rqt-gui-py rqt-logger-level rqt-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_console provides a GUI plugin for displaying and filtering ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

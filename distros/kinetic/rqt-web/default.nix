
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, qt-gui, rospy, rqt-gui, rqt-gui-py, webkit-dependency }:
buildRosPackage {
  pname = "ros-kinetic-rqt-web";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_web-release/archive/release/kinetic/rqt_web/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "106888a84f50f1d5adf2e80db7a0e91548f95feab02bc8c90b13cccbe634046d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg qt-gui rospy rqt-gui rqt-gui-py webkit-dependency ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_web is a simple web content viewer for rqt. Users can show web content in Qt-based window by specifying its URL.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

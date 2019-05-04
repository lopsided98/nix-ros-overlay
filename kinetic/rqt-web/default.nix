
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, webkit-dependency, rqt-gui, catkin, pythonPackages, qt-gui, rospy, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-rqt-web";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_web-release/archive/release/kinetic/rqt_web/0.4.8-0.tar.gz;
    sha256 = "106888a84f50f1d5adf2e80db7a0e91548f95feab02bc8c90b13cccbe634046d";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg webkit-dependency rqt-gui qt-gui rospy python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_web is a simple web content viewer for rqt. Users can show web content in Qt-based window by specifying its URL.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

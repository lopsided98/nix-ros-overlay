
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, qt-gui, rospy, rqt-gui, rqt-gui-py, webkit-dependency }:
buildRosPackage {
  pname = "ros-noetic-rqt-web";
  version = "0.4.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_web-release/archive/release/noetic/rqt_web/0.4.10-1.tar.gz";
    name = "0.4.10-1.tar.gz";
    sha256 = "ab966db5d643bc5912b5f915bd2849ea8d4563b59f44bff9cd25c42ecba61e8c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg qt-gui rospy rqt-gui rqt-gui-py webkit-dependency ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_web is a simple web content viewer for rqt. Users can show web content in Qt-based window by specifying its URL.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

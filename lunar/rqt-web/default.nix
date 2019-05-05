
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, webkit-dependency, rqt-gui, catkin, pythonPackages, qt-gui, rospy, python-qt-binding }:
buildRosPackage {
  pname = "ros-lunar-rqt-web";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_web-release/archive/release/lunar/rqt_web/0.4.8-0.tar.gz;
    sha256 = "7ce772b6f7fed4b5d14c1397b0d1bd92fb7b1e154e0d2b43642dde61c2723975";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg webkit-dependency rqt-gui qt-gui rospy python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_web is a simple web content viewer for rqt. Users can show web content in Qt-based window by specifying its URL.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

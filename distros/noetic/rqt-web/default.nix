
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, qt-gui, rospy, rqt-gui, rqt-gui-py, webkit-dependency }:
buildRosPackage {
  pname = "ros-noetic-rqt-web";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_web-release/archive/release/noetic/rqt_web/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "efb50ef4af4df584ac3f2d1a5698df46bfcbf71d6a8df81158793b6edb9a9903";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg qt-gui rospy rqt-gui rqt-gui-py webkit-dependency ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rqt_web is a simple web content viewer for rqt. Users can show web content in Qt-based window by specifying its URL.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, python-qt-binding, catkin, rqt-gui, pythonPackages, rosmsg, rqt-py-common, roslib, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-kinetic-rqt-publisher";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_publisher-release/archive/release/kinetic/rqt_publisher/0.4.8-0.tar.gz;
    sha256 = "3d8ea88fda2a8289e97aed69e0d98e0ac9d96c92f6b16ddf77c0b38a3902b33f";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rqt-gui rosmsg qt-gui-py-common rqt-py-common roslib python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_publisher provides a GUI plugin for publishing arbitrary messages with fixed or computed field values.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

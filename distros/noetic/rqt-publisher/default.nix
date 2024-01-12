
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, qt-gui-py-common, roslib, rosmsg, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-noetic-rqt-publisher";
  version = "0.4.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_publisher-release/archive/release/noetic/rqt_publisher/0.4.10-1.tar.gz";
    name = "0.4.10-1.tar.gz";
    sha256 = "5cbe23d13ab2d2c4286bb3e6d6b2e56396845732c3bf6574e6a129cedc642c07";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg qt-gui-py-common roslib rosmsg rqt-gui rqt-gui-py rqt-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_publisher provides a GUI plugin for publishing arbitrary messages with fixed or computed field values.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, geometry-msgs, rqt-py-common, tf, catkin, rqt-gui-py, qt-gui, rospy, nav-msgs, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-rqt-nav-view";
  version = "0.5.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_nav_view-release/archive/release/kinetic/rqt_nav_view/0.5.7-0.tar.gz";
    name = "0.5.7-0.tar.gz";
    sha256 = "437a0acd3687c86f33e5f3bcfe50b125d3392b8bf913fbc9d7871f4324a58a53";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui geometry-msgs rqt-py-common tf rqt-gui-py qt-gui rospy nav-msgs python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_nav_view provides a gui for viewing navigation maps and paths.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, catkin, rqt-gui, nav-msgs, qt-gui, rospy, rqt-py-common, tf, python-qt-binding, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rqt-nav-view";
  version = "0.5.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_nav_view-release/archive/release/kinetic/rqt_nav_view/0.5.7-0.tar.gz;
    sha256 = "437a0acd3687c86f33e5f3bcfe50b125d3392b8bf913fbc9d7871f4324a58a53";
  };

  propagatedBuildInputs = [ rqt-gui-py rqt-gui nav-msgs qt-gui rospy rqt-py-common tf python-qt-binding geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_nav_view provides a gui for viewing navigation maps and paths.'';
    #license = lib.licenses.BSD;
  };
}

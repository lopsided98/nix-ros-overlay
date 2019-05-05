
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, catkin, rqt-gui, nav-msgs, qt-gui, rospy, rqt-py-common, tf, python-qt-binding, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-rqt-nav-view";
  version = "0.5.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_nav_view-release/archive/release/lunar/rqt_nav_view/0.5.7-0.tar.gz;
    sha256 = "20aa0131afe3ea6f00e8dc41e6a5a1e9f4b79c9b477ab922d1dc99499c41a0f2";
  };

  propagatedBuildInputs = [ rqt-gui-py rqt-gui nav-msgs qt-gui rospy rqt-py-common tf python-qt-binding geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_nav_view provides a gui for viewing navigation maps and paths.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

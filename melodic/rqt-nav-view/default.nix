
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, geometry-msgs, rqt-py-common, tf, catkin, rqt-gui-py, qt-gui, rospy, nav-msgs, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-rqt-nav-view";
  version = "0.5.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_nav_view-release/archive/release/melodic/rqt_nav_view/0.5.7-0.tar.gz";
    name = "0.5.7-0.tar.gz";
    sha256 = "a531ad91a1753f9dd2b74d56b519c52aebeac013373f76c6e4e6b19c66ca46a0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui geometry-msgs rqt-py-common tf rqt-gui-py qt-gui rospy nav-msgs python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_nav_view provides a gui for viewing navigation maps and paths.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

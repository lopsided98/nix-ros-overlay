
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, python-qt-binding, python3Packages, qt-gui, rospy, rqt-gui, rqt-gui-py, rqt-py-common, tf }:
buildRosPackage {
  pname = "ros-noetic-rqt-nav-view";
  version = "0.5.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_nav_view-release/archive/release/noetic/rqt_nav_view/0.5.8-1.tar.gz";
    name = "0.5.8-1.tar.gz";
    sha256 = "bfafb3747976e7b5de65cbb2a364de5f8ed54f8209a7aa347d7e4e71ca55716d";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs python-qt-binding qt-gui rospy rqt-gui rqt-gui-py rqt-py-common tf ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rqt_nav_view provides a gui for viewing navigation maps and paths.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

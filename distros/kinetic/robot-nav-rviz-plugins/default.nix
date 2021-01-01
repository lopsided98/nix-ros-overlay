
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, color-util, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-core2, nav-grid, nav-grid-iterators, nav-grid-pub-sub, nav-msgs, pluginlib, qt5, roscpp, roslint, rviz, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-robot-nav-rviz-plugins";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/robot_nav_rviz_plugins/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "a8a2229edb98f76cd7c1a6574c2f7470a0fd2d43d8fcfb74434a2a5dee4efbd1";
  };

  buildType = "catkin";
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ color-util geometry-msgs nav-2d-msgs nav-2d-utils nav-core2 nav-grid nav-grid-iterators nav-grid-pub-sub nav-msgs pluginlib qt5.qtbase roscpp rviz std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RViz visualizations for robot_navigation datatypes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, color-util, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-core2, nav-grid, nav-grid-iterators, nav-grid-pub-sub, nav-msgs, pluginlib, qt5, roscpp, roslint, rviz, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-robot-nav-rviz-plugins";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/robot_nav_rviz_plugins/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "44bd38be8166789fba741d1249b9c768a8ffd8647dd1b8b522c833163ce207a5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ color-util geometry-msgs nav-2d-msgs nav-2d-utils nav-core2 nav-grid nav-grid-iterators nav-grid-pub-sub nav-msgs pluginlib qt5.qtbase roscpp rviz std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RViz visualizations for robot_navigation datatypes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

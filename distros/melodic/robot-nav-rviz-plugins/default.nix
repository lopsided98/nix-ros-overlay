
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, color-util, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-core2, nav-grid, nav-grid-iterators, nav-grid-pub-sub, nav-msgs, pluginlib, qt5, roscpp, roslint, rviz, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-robot-nav-rviz-plugins";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/robot_nav_rviz_plugins/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "ce70e9c70a0b2d32e64567a5bf2f80cce958aa7a6d62e7bc92755243287b43d9";
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

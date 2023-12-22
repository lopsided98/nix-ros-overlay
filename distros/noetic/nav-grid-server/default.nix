
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, map-server, nav-2d-utils, nav-grid, nav-grid-iterators, nav-grid-pub-sub, nav-msgs, opencv, roscpp, roslib, roslint }:
buildRosPackage {
  pname = "ros-noetic-nav-grid-server";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/nav_grid_server/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "7f9a3ff151aaca65d672920ff96c2d2b0fcaa90ce9af788524da2ba8bd13ea51";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ map-server roslib roslint ];
  propagatedBuildInputs = [ nav-2d-utils nav-grid nav-grid-iterators nav-grid-pub-sub nav-msgs opencv opencv.cxxdev roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Customizable tools for publishing images as NavGrids or OccupancyGrids'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

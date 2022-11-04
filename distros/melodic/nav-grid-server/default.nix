
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, map-server, nav-2d-utils, nav-grid, nav-grid-iterators, nav-grid-pub-sub, nav-msgs, opencv, roscpp, roslib, roslint }:
buildRosPackage {
  pname = "ros-melodic-nav-grid-server";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/nav_grid_server/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "f853f5d45d155f62bfe817eb4047035ce8b520faee18a565791f0f165883d321";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ map-server roslib roslint ];
  propagatedBuildInputs = [ nav-2d-utils nav-grid nav-grid-iterators nav-grid-pub-sub nav-msgs opencv roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Customizable tools for publishing images as NavGrids or OccupancyGrids'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

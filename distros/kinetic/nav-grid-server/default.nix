
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, map-server, nav-2d-utils, nav-grid, nav-grid-iterators, nav-grid-pub-sub, nav-msgs, opencv3, roscpp, roslib, roslint }:
buildRosPackage {
  pname = "ros-kinetic-nav-grid-server";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/nav_grid_server/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "9aea1c714e9e699fd5631e4f5fe0ac63d38ba84669ffc230857efc4782eafc59";
  };

  buildType = "catkin";
  checkInputs = [ map-server roslib roslint ];
  propagatedBuildInputs = [ nav-2d-utils nav-grid nav-grid-iterators nav-grid-pub-sub nav-msgs opencv3 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Customizable tools for publishing images as NavGrids or OccupancyGrids'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

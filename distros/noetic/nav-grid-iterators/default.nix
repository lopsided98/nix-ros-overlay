
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-2d-msgs, nav-2d-utils, nav-grid, nav-msgs, roscpp, roslint, rosunit }:
buildRosPackage {
  pname = "ros-noetic-nav-grid-iterators";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/nav_grid_iterators/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "a64ae6f71d047ca140fa84d2c0de528ac43edcae2db173516719186d16932cf0";
  };

  buildType = "catkin";
  checkInputs = [ roslint rosunit ];
  propagatedBuildInputs = [ nav-2d-msgs nav-2d-utils nav-grid nav-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Iterator implementations for moving around the cells of a nav_grid in a number of common patterns.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-2d-msgs, nav-2d-utils, nav-grid, nav-msgs, roscpp, roslint, rosunit }:
buildRosPackage {
  pname = "ros-melodic-nav-grid-iterators";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/nav_grid_iterators/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "85aa53f153880ee681412a6d1a963547b6110879d69db3fe24842cd9bcbd0200";
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

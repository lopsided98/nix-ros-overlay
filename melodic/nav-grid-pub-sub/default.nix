
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, nav-grid, nav-grid-iterators, nav-core2, catkin, nav-2d-utils, nav-msgs, roscpp, nav-2d-msgs, geometry-msgs, map-msgs }:
buildRosPackage {
  pname = "ros-melodic-nav-grid-pub-sub";
  version = "0.2.5-r1";

  src = fetchurl {
    url = https://github.com/DLu/robot_navigation-release/archive/release/melodic/nav_grid_pub_sub/0.2.5-1.tar.gz;
    sha256 = "e2d1c5f03e225c1972d664a489216e5d37b8bf1284da2338b344637a44d48b39";
  };

  checkInputs = [ roslint ];
  propagatedBuildInputs = [ nav-grid nav-core2 nav-2d-msgs nav-2d-utils nav-msgs roscpp nav-grid-iterators geometry-msgs map-msgs ];
  nativeBuildInputs = [ nav-grid nav-core2 catkin nav-2d-msgs nav-2d-utils nav-msgs roscpp nav-grid-iterators geometry-msgs map-msgs ];

  meta = {
    description = ''Publishers and Subscribers for nav_grid data.'';
    #license = lib.licenses.BSD;
  };
}

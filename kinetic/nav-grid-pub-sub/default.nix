
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nav-grid, nav-core2, nav-2d-msgs, map-msgs, catkin, roscpp, roslint, nav-grid-iterators, nav-msgs, nav-2d-utils }:
buildRosPackage {
  pname = "ros-kinetic-nav-grid-pub-sub";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/nav_grid_pub_sub/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "8b4f57c9eccf3d22a1409434f9a1464e2431575bf4854bef4b3e6282d2df411b";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs nav-2d-msgs nav-core2 nav-grid map-msgs roscpp nav-grid-iterators nav-msgs nav-2d-utils ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ geometry-msgs nav-2d-msgs nav-core2 nav-grid map-msgs roscpp nav-grid-iterators nav-msgs nav-2d-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Publishers and Subscribers for nav_grid data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

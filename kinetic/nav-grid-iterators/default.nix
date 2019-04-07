
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, nav-grid, catkin, nav-2d-utils, nav-msgs, rosunit, roscpp, nav-2d-msgs }:
buildRosPackage {
  pname = "ros-kinetic-nav-grid-iterators";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/nav_grid_iterators/0.2.5-0.tar.gz;
    sha256 = "ed38253289573acb154da91af3979be6e3941a78c49edb8f272f180f5862986c";
  };

  buildInputs = [ nav-2d-utils nav-msgs nav-grid roscpp nav-2d-msgs ];
  checkInputs = [ rosunit roslint ];
  propagatedBuildInputs = [ nav-2d-utils nav-msgs nav-grid roscpp nav-2d-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Iterator implementations for moving around the cells of a nav_grid in a number of common patterns.'';
    #license = lib.licenses.BSD;
  };
}

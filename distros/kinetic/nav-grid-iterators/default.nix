
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-2d-msgs, nav-2d-utils, nav-grid, nav-msgs, roscpp, roslint, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-nav-grid-iterators";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/nav_grid_iterators/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "edb13a67643a442cd962b0a52aa6d099b78120665507568e30c322873920be4e";
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

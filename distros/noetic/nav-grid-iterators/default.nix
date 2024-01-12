
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-2d-msgs, nav-2d-utils, nav-grid, nav-msgs, roscpp, roslint, rosunit }:
buildRosPackage {
  pname = "ros-noetic-nav-grid-iterators";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/nav_grid_iterators/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "715a29d86f34cf38708568e4910bc44aab11cf807ec1e60e07525059753a3162";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rosunit ];
  propagatedBuildInputs = [ nav-2d-msgs nav-2d-utils nav-grid nav-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Iterator implementations for moving around the cells of a nav_grid in a number of common patterns.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

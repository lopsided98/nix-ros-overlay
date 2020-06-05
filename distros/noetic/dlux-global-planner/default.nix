
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-core2, nav-grid, nav-grid-pub-sub, nav-msgs, pluginlib, roscpp, roslint, rostest, rosunit, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-dlux-global-planner";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/dlux_global_planner/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "37181821471bc8a04d130319876b5aa6122632971cac7e9b6870812f10913d1f";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ geometry-msgs nav-2d-msgs nav-2d-utils nav-core2 nav-grid nav-grid-pub-sub nav-msgs pluginlib roscpp visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin based global planner implementing the nav_core2::GlobalPlanner interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

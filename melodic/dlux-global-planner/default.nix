
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav-grid-pub-sub, pluginlib, nav-grid, roslint, nav-core2, catkin, roscpp, nav-2d-msgs, rostest, nav-2d-utils, nav-msgs, visualization-msgs, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-dlux-global-planner";
  version = "0.2.5-r1";

  src = fetchurl {
    url = https://github.com/DLu/robot_navigation-release/archive/release/melodic/dlux_global_planner/0.2.5-1.tar.gz;
    sha256 = "6a30b86cc1610cafd21bf8248d800d59d5dbd510bff2a0a767afca90a58d9cbc";
  };

  buildInputs = [ nav-grid-pub-sub pluginlib nav-grid nav-core2 roscpp nav-2d-utils nav-msgs visualization-msgs nav-2d-msgs geometry-msgs ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ nav-grid-pub-sub pluginlib nav-grid nav-core2 roscpp nav-2d-utils nav-msgs visualization-msgs nav-2d-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin based global planner implementing the nav_core2::GlobalPlanner interface.'';
    #license = lib.licenses.BSD;
  };
}

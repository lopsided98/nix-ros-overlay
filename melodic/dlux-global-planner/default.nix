
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, geometry-msgs, nav-grid, nav-core2, pluginlib, catkin, nav-grid-pub-sub, roscpp, rosunit, roslint, visualization-msgs, nav-2d-msgs, nav-msgs, nav-2d-utils }:
buildRosPackage {
  pname = "ros-melodic-dlux-global-planner";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/dlux_global_planner/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "6a30b86cc1610cafd21bf8248d800d59d5dbd510bff2a0a767afca90a58d9cbc";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs nav-grid nav-core2 pluginlib nav-grid-pub-sub roscpp visualization-msgs nav-2d-msgs nav-msgs nav-2d-utils ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ geometry-msgs nav-2d-msgs nav-core2 pluginlib nav-grid nav-grid-pub-sub visualization-msgs roscpp nav-msgs nav-2d-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin based global planner implementing the nav_core2::GlobalPlanner interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav-grid-pub-sub, pluginlib, nav-grid, roslint, nav-core2, catkin, roscpp, nav-2d-msgs, rostest, nav-2d-utils, nav-msgs, visualization-msgs, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-dlux-global-planner";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/lunar/dlux_global_planner/0.2.5-0.tar.gz;
    sha256 = "dc9e1fc56f29c761650d04fbbcc406816d5d6cd3fd55305a4b5a06988245b223";
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

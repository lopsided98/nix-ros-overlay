
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav-grid-pub-sub, pluginlib, roslint, nav-grid, nav-core2, catkin, nav-2d-msgs, rostest, nav-2d-utils, nav-msgs, visualization-msgs, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dlux-global-planner";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dlux_global_planner/0.2.5-0.tar.gz;
    sha256 = "f5e4bedcf2009c18b5dd3bcd29d22b1d99351db34f3ea86c49be0648c1ce9d16";
  };

  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ nav-grid-pub-sub pluginlib nav-grid nav-core2 roscpp nav-2d-utils nav-msgs visualization-msgs nav-2d-msgs geometry-msgs ];
  nativeBuildInputs = [ nav-grid-pub-sub pluginlib nav-grid nav-core2 catkin roscpp nav-2d-utils nav-msgs visualization-msgs nav-2d-msgs geometry-msgs ];

  meta = {
    description = ''Plugin based global planner implementing the nav_core2::GlobalPlanner interface.'';
    #license = lib.licenses.BSD;
  };
}

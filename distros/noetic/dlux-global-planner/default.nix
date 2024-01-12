
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-core2, nav-grid, nav-grid-pub-sub, nav-msgs, pluginlib, roscpp, roslint, rostest, rosunit, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-dlux-global-planner";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/dlux_global_planner/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "0a7711a3efcb134f7051b4f785d07104bafe68db9c3e56e1a6f2f305a910fb77";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ geometry-msgs nav-2d-msgs nav-2d-utils nav-core2 nav-grid nav-grid-pub-sub nav-msgs pluginlib roscpp visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin based global planner implementing the nav_core2::GlobalPlanner interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

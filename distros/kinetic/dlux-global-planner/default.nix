
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-core2, nav-grid, nav-grid-pub-sub, nav-msgs, pluginlib, roscpp, roslint, rostest, rosunit, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dlux-global-planner";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dlux_global_planner/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "90b2451a78ef597566d25a3739a4c15ecc530c8dbdb0ff404efb4a3e22d2f696";
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

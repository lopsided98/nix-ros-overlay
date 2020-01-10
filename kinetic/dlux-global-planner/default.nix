
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-core2, nav-grid, nav-grid-pub-sub, nav-msgs, pluginlib, roscpp, roslint, rostest, rosunit, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dlux-global-planner";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dlux_global_planner/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "f5e4bedcf2009c18b5dd3bcd29d22b1d99351db34f3ea86c49be0648c1ce9d16";
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

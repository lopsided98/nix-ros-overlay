
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, geometry-msgs, nav-grid, nav-core2, pluginlib, catkin, nav-grid-pub-sub, roscpp, rosunit, roslint, visualization-msgs, nav-2d-msgs, nav-msgs, nav-2d-utils }:
buildRosPackage {
  pname = "ros-kinetic-dlux-global-planner";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dlux_global_planner/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "f5e4bedcf2009c18b5dd3bcd29d22b1d99351db34f3ea86c49be0648c1ce9d16";
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

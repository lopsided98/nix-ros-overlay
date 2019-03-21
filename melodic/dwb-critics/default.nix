
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dwb-local-planner, pluginlib, roslint, nav-core2, costmap-queue, catkin, sensor-msgs, nav-2d-msgs, nav-2d-utils, angles, roscpp, nav-grid-iterators, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-dwb-critics";
  version = "0.2.5-r1";

  src = fetchurl {
    url = https://github.com/DLu/robot_navigation-release/archive/release/melodic/dwb_critics/0.2.5-1.tar.gz;
    sha256 = "42ff253d658b161baff427aa5da4a789f5dcf17d61e316cc8f40bd320ce00a3f";
  };

  checkInputs = [ roslint ];
  propagatedBuildInputs = [ pluginlib nav-grid-iterators sensor-msgs nav-core2 costmap-queue nav-2d-msgs nav-2d-utils angles roscpp dwb-local-planner geometry-msgs ];
  nativeBuildInputs = [ pluginlib nav-grid-iterators sensor-msgs nav-core2 costmap-queue catkin nav-2d-msgs nav-2d-utils angles roscpp dwb-local-planner geometry-msgs ];

  meta = {
    description = ''Implementations for dwb_local_planner TrajectoryCritic interface'';
    #license = lib.licenses.BSD;
  };
}

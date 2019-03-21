
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dwb-local-planner, pluginlib, roslint, nav-core2, costmap-queue, catkin, sensor-msgs, nav-2d-msgs, nav-2d-utils, angles, roscpp, nav-grid-iterators, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dwb-critics";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dwb_critics/0.2.5-0.tar.gz;
    sha256 = "9aa1745b72bd9344f8c38fea4b051529682ec139452303432ce374a7fd120593";
  };

  checkInputs = [ roslint ];
  propagatedBuildInputs = [ pluginlib nav-grid-iterators sensor-msgs nav-core2 costmap-queue nav-2d-msgs nav-2d-utils angles roscpp dwb-local-planner geometry-msgs ];
  nativeBuildInputs = [ pluginlib nav-grid-iterators sensor-msgs nav-core2 costmap-queue catkin nav-2d-msgs nav-2d-utils angles roscpp dwb-local-planner geometry-msgs ];

  meta = {
    description = ''Implementations for dwb_local_planner TrajectoryCritic interface'';
    #license = lib.licenses.BSD;
  };
}

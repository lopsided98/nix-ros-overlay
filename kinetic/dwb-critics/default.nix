
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, roslint, nav-grid-iterators, nav-core2, costmap-queue, sensor-msgs, catkin, nav-2d-msgs, nav-2d-utils, angles, roscpp, dwb-local-planner, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dwb-critics";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dwb_critics/0.2.5-0.tar.gz;
    sha256 = "9aa1745b72bd9344f8c38fea4b051529682ec139452303432ce374a7fd120593";
  };

  buildInputs = [ pluginlib nav-grid-iterators nav-core2 costmap-queue sensor-msgs nav-2d-msgs nav-2d-utils angles roscpp dwb-local-planner geometry-msgs ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ pluginlib nav-grid-iterators nav-core2 costmap-queue sensor-msgs nav-2d-msgs nav-2d-utils angles roscpp dwb-local-planner geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementations for dwb_local_planner TrajectoryCritic interface'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
